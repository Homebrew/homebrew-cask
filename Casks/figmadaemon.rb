cask 'figmadaemon' do
  version '17'
  sha256 '61064122439bcf1e1ae05ff2b040107aa33f7c25898526bca4d9e8902a56fea0'

  url "https://font-daemon.figma.com/mac/FigmaDaemon.#{version}.zip"
  appcast 'http://font-daemon.figma.com/mac/versions.xml'
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
