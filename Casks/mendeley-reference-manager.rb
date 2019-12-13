cask 'mendeley-reference-manager' do
  version '2.17.0'
  sha256 '1b8b7b3bb4f552e52d8916008f7b561cc34de81bea93f0f38157ffa0809b0f3b'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
