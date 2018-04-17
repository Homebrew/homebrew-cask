cask 'emacs' do
  version '25.3'
  sha256 'b2bfc1e90a2e3a9e138fdd42ec1796bf38eeaf06021905f9ffbaf8b397ca64ac'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: 'dd284d2f08cac506fc34711eff27ac68268dbe0d2deab602d23c602222f88249'
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
