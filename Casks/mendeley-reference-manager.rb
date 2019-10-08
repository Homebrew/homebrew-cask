cask 'mendeley-reference-manager' do
  version '2.14.0'
  sha256 '45f80eb0b3046e04407023c1f64b001d7ea60e46b4971437767d13d60a204500'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
