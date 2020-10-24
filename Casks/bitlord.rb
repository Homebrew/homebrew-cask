cask 'bitlord' do
  version '2.4.6,348'
  sha256 '35b4c5c6d880973f05c1ef2fa16b996b7c82aca88a4412c17d2f50e24f51ca09'

  url "https://www.bitlord.com/osx/BitLord-ver#{version.after_comma}.dmg"
  name 'BitLord'
  homepage 'https://www.bitlord.com/'

  app 'BitLord.app'
end
