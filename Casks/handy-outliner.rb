cask 'handy-outliner' do
  version '1.1.6.2'
  sha256 'a67a21650d29114c058e1f50bce3675e7c7b427abdd67a60e49098a31046d14d'

  url "https://downloads.sourceforge.net/handyoutlinerfo/handyoutliner_#{version}.zip"
  appcast 'https://sourceforge.net/projects/handyoutlinerfo/rss',
          checkpoint: 'cecb51c6c4341e9527776b119dee4b9774b73e5f710dd8221f2af8d626fa05e2'
  name 'HandyOutliner for DjVu and PDF'
  homepage 'http://handyoutlinerfo.sourceforge.net/'

  depends_on cask:    'mono-mdk',
             formula: 'djvulibre'

  binary 'handy-outliner'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/handy-outliner"

  preflight do
    IO.write shimscript, <<~EOS
      # !/bin/sh
      BASEDIR="$(dirname "$(readlink -n $0)")"
      $BASEDIR/handyoutliner_#{version}/start-macos
    EOS
  end

  caveats do
    puts "To run this app, type 'handy-outliner' in terminal."
  end
end
