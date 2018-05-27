cask 'handy-outliner' do
  version '1.1.6.3'
  sha256 '418b6f67c55ef76d537941ec258160dd845d4027ff1e2f81bcbca713510d392d'

  url "https://downloads.sourceforge.net/handyoutlinerfo/handyoutliner_#{version}.zip"
  appcast 'https://sourceforge.net/projects/handyoutlinerfo/rss',
          checkpoint: '0f43ad62d6adadfa40c7928650735a454dce0181fb7b4805702503de17aba282'
  name 'HandyOutliner for DjVu and PDF'
  homepage 'http://handyoutlinerfo.sourceforge.net/'

  depends_on cask:    'mono-mdk',
             formula: 'djvulibre'

  binary 'handy-outliner'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/handy-outliner"

  preflight do
    IO.write shimscript, <<~EOS
      # !/bin/sh
      BASEDIR="$(dirname "$(readlink -n $0)")"
      $BASEDIR/handyoutliner_#{version}/start-macos
    EOS
  end

  caveats <<~EOS
    To run this app, type 'handy-outliner' in terminal.
  EOS
end
