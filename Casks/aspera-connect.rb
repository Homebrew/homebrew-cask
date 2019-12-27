cask 'aspera-connect' do
  version '3.9.8.176271'
  sha256 'ba76abdc43f5ef1039ca08f50e268ae9a0341da1bef31b03917d25a419a104fb'

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
