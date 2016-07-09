cask 'softraid' do
  version '5.5'
  sha256 '203a980027858bc901120f0f4202db06600768029f8b4a2beeb868381aa1c775'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'
  license :commercial

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
