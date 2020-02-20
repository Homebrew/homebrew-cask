cask 'mendeley-reference-manager' do
  version '2.18.0'
  sha256 'c19897607d3f7262cef79d717ac2048fc274df78bc0e7cc2a25506d869df7b40'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
