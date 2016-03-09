cask 'murus' do
  version '1.3.6'
  sha256 '1c4de880c87eb8f8114672cfede23cf7d3c52f6ad048b0146aa52fabff878f35'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  depends_on macos: '>= :mavericks'
  container nested: "Murus #{version}.dmg"

  app 'Murus.app'
end
