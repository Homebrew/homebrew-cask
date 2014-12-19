cask :v1 => 'murus' do
  version '1.0beta4'
  sha256 'b286d5668b7c4cb91f89245e6c7683897d9070856ca2ddad02ce5804938764c0'

  url "http://www.murusfirewall.com/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  depends_on :macos => [:mavericks, :yosemite]

  app 'Murus Public Beta 4/Murus.app'
end
