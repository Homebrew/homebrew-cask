cask 'murus' do
  version '1.4.1'
  sha256 '0d1ae03bd93f2f77af7398acacc9747f9709691e84a5858d578ab2d5c4a03255'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  depends_on macos: '>= :mavericks'
  container nested: "Murus #{version}.dmg"

  app 'Murus.app'
end
