cask 'murus' do
  version '1.4.8'
  sha256 '28627fb4c40f48d434d87e53a6afc43b672b286a009283af897654e6c35fa819'

  url "https://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'
end
