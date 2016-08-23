cask 'raindrop' do
  version :latest
  sha256 :no_check

  url 'https://raindrop.io/releases/mac/Raindrop.dmg'
  name 'Raindropio'
  homepage 'https://raindrop.io/'
  license :gratis

  app 'Raindrop.io.app'
end
