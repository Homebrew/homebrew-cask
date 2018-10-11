cask 'kdiff3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (3-way diff)
  version '0.9.98'
  sha256 '3cbfb7f30989af2b28658a5f9f331c1a20275f16f42f3126119913b65cb06777'

  # downloads.sourceforge.net/kdiff3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kdiff3/kdiff3/#{version}/kdiff3-#{version}-MacOSX-64Bit.dmg"
  appcast 'https://sourceforge.net/projects/kdiff3/rss?path=/kdiff3'
  name 'KDiff3'
  homepage 'https://kdiff3.sourceforge.io/'

  app 'kdiff3.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/kdiff3.wrapper.sh"
  binary shimscript, target: 'kdiff3'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/kdiff3.app/Contents/MacOS/kdiff3' "$@"
    EOS
  end

  zap trash: '~/.kdiff3rc'
end
