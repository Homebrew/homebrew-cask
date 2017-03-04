cask 'emacs' do
  version '25.1-1'
  sha256 'b8a4616aa529e77637b51c3ff6bd850dcd6731ccedb40044c9ecbbb53fdc125d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: '4867fa70191bad9cd83d3816882af1d4818443b311281a5c2b673f9e0fc2ee0e'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
end
