cask 'aspera-connect' do
  version '3.9.9.177872'
  sha256 '2734c7e299e15ff4dd29630c55ce1efa4c7568f3de48d9e1fd7330f0a8ff63a1'

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
