cask 'emacs' do
  version '24.5-1'
  sha256 'c99c3def07886c0897c7c4bfc4a19338ea3d5bbcc2986d48be98aae1401f5830'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: 'c68a8c31a4309b66b7cf8c69e431d739866a28bd9ad77b5e86ed3e2ad76a2d27'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/grep-changelog"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
end
