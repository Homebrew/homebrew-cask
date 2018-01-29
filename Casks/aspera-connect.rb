cask 'aspera-connect' do
  version '3.7.4.147728'
  sha256 '7e8357b5c670c7c27a220fc709f6453765a5a6715f06601e9cda4ba89bf06770'

  url "http://download.asperasoft.com/download/sw/connect/#{version.major_minor_patch}/AsperaConnectInstaller-#{version}.dmg"
  name 'Aspera Connect'
  homepage 'http://asperasoft.com/software/transfer-clients/connect-web-browser-plug-in/'

  pkg 'AsperaConnectInstaller.pkg'

  uninstall pkgutil: [
                       'com.aspera.AsperaWeb',
                       'com.aspera.connect',
                       'com.aspera.crypt',
                     ],
            script:  {
                       executable: '/Library/Application Support/Aspera/Aspera Connect/uninstall_connect.sh',
                       args:       ['-f'],
                       sudo:       true,
                     }
end
