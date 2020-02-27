cask 'prosys-opc-ua-browser' do
  version '4.0.2-231'
  sha256 '5886f887a282f2bd45066f8c6a85a9431457e26281e598bc35f1f44b9e58056a'

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version}/prosys-opc-ua-browser-macos-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-browser-downloads.php'
  name 'Prosys OPC UA Browser'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  installer script: {
                      executable: 'Prosys OPC UA Browser Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/Prosys OPC UA Browser.app'
end
