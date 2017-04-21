cask 'emacs' do
  version '25.2'
  sha256 '3d5cee1839132bc997b9312b9a205864cb3e5650c79534ac626a160c2fd2c405'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: '489333e27856d07d50138d32676668084801ebd6186b21016fd6d471b770fd32'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
end
