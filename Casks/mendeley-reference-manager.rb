cask 'mendeley-reference-manager' do
  version '2.13.0'
  sha256 '455686e020303042f87785aee4c4e6cb98b99ca7b1d921c172b9c1313c1d0688'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
