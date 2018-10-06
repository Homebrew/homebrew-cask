cask 'bitlord' do
  version '2.4.5,324'
  sha256 '59afe3669e040fe1080be04e633680286b45c44c72fbf720ca3eade5f4d64596'

  url "https://www.bitlord.com/osx/BitLord-ver#{version.after_comma}.dmg"
  name 'BitLord'
  homepage 'https://www.bitlord.com/'

  app 'BitLord.app'
end
