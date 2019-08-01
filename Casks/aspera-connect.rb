cask 'aspera-connect' do
  version '3.9.6.173386'
  sha256 '1eb1480957cb2c4958aa12c26802b7dfc2d7a255325d9a83c058c6fd0fa7d0d6'

  url "https://download.asperasoft.com/download/sw/connect/#{version.major_minor_patch}/IBMAsperaConnectInstaller-#{version}.dmg"
  appcast 'https://downloads.asperasoft.com/en/documentation/8'
  name 'Aspera Connect'
  homepage 'https://asperasoft.com/software/transfer-clients/connect-web-browser-plug-in/'

  pkg 'IBMAsperaConnectInstaller.pkg'

  uninstall pkgutil: [
                       'com.aspera.AsperaWeb',
                       'com.aspera.connect',
                       'com.aspera.crypt',
                       'com.aspera.launcher',
                     ],
            script:  {
                       executable: '/Library/Application Support/Aspera/Aspera Connect/uninstall_connect.sh',
                       args:       ['-f'],
                       sudo:       true,
                     }
end
