cask 'aspera-connect' do
  version '3.8.1.161274'
  sha256 'a04fd1697ed797242d9201e2ad2be345431fffc89076d96bb637c4efa23eee02'

  url "https://download.asperasoft.com/download/sw/connect/#{version.major_minor_patch}/IBMAsperaConnectInstaller-#{version}.dmg"
  name 'Aspera Connect'
  homepage 'https://asperasoft.com/software/transfer-clients/connect-web-browser-plug-in/'

  pkg 'IBMAsperaConnectInstaller.pkg'

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
