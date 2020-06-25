cask 'mendeley-reference-manager' do
  version '2.28.0'
  sha256 '9d8c689102f10b1e0beae2ee21ad56a9f4417372f5c40db70759dcf82ad0c607'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
