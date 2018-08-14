cask 'majestic' do
  version '0.2.0'
  sha256 'd60502140c0a6381a02a2f1ba164437863797fe2a625f839cbc4aa4a3c340887'

  url "https://github.com/Raathigesh/majestic/releases/download/v#{version}/Majestic-#{version}.dmg"
  appcast 'https://github.com/Raathigesh/majestic/releases.atom'
  name 'Majestic'
  homepage 'https://github.com/Raathigesh/majestic'

  auto_updates true

  app 'Majestic.app'
end
