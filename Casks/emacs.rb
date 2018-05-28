cask 'emacs' do
  version '26.1'
  sha256 'c8ca0838901ae9d3f889e76141f971425169cc047281e60b8f6b70ad185c7bd2'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: '59d728a9a6a7e7223191eec747680fbb249eba98510cd08314e2e5b36aaa8b5b'
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
