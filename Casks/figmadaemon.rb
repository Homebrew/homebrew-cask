cask 'figmadaemon' do
  version :latest
  sha256 :no_check

  url 'https://font-daemon.figma.com/FigmaInstaller.pkg'
  name 'Figma Font Installers'
  homepage 'https://www.figma.com/'

  pkg 'FigmaInstaller.pkg'

  uninstall pkgutil:   'com.figma.daemon',
            launchctl: 'com.figma.daemon',
            delete:    '~/Library/Application Support/Figma/FigmaDaemon.app'

  zap trash: [
               '~/Library/Preferences/com.figma.FigmaDaemon.plist',
               '~/Library/Caches/com.figma.FigmaDaemon',
             ]
end
