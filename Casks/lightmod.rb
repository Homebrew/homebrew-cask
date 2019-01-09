cask 'lightmod' do
  version '1.2.1'
  sha256 'ac788a5461e929fb3514f5650cf1eac49afc773e39081269ef477420bae60fc8'

  # github.com/oakes/Lightmod was verified as official when first introduced to the cask
  url "https://github.com/oakes/Lightmod/releases/download/#{version}/Lightmod-#{version}.dmg"
  appcast 'https://github.com/oakes/Lightmod/releases.atom'
  name 'Lightmod'
  homepage 'https://sekao.net/lightmod/'

  app 'Lightmod.app'
end
