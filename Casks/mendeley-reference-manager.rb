cask 'mendeley-reference-manager' do
  version '2.24.0'
  sha256 '5e89c6d4d56f5885ac764325c97980d6b526d651777cac2be433ca4f3075196a'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
