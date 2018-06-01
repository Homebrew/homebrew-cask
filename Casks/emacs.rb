cask 'emacs' do
  version '26.1-2'
  sha256 '2ea8d0b0055d5d0ba604771dbb2f9731dd5c815776eec6a9bca3c44d7ab40d99'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: '7665006fab5be71be22a48a82f0402825e42c6fd7168272492447782fae08b1d'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  conflicts_with formula: ['emacs', 'ctags']

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: 'emacs'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"

  zap trash: [
               '~/Library/Caches/org.gnu.Emacs',
               '~/Library/Preferences/org.gnu.Emacs.plist',
               '~/Library/Saved Application State/org.gnu.Emacs.savedState',
             ]
end
