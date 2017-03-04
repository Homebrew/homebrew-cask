cask 'raindropio' do
  version :latest
  sha256 :no_check

  url 'https://raindrop.io/releases/mac/Raindrop.dmg'
  name 'Raindrop.io'
  homepage 'https://raindrop.io/'

  app 'Raindrop.io.app'
end
