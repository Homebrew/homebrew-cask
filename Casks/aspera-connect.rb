cask 'aspera-connect' do
  version '3.9.7.175481'
  sha256 'a19420a1aee15888e173e6f0816c01245a9561acac4598e3671c5e62e8f19e81'

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
