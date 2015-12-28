cask 'raindrop' do
  version :latest
  sha256 :no_check

  url 'https://raindrop.io/releases/Raindrop.app.zip'
  name 'Raindrop'
  homepage 'https://raindrop.io/'
  license :gratis

  app 'Raindrop.app'
end
