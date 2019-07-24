cask 'bitlord' do
  version '341'
  sha256 '828edaa6059004edf8357dea4c06cc438223ac6b638ee4bbf1c3ee83d8ce9775'

  url "https://www.bitlord.com/osx/BitLord-ver#{version}.dmg"
  name 'BitLord'
  homepage 'https://www.bitlord.com'

  app 'BitLord.app'
end
