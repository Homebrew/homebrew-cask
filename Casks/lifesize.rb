cask 'lifesize' do
  version '2.210.2687'
  sha256 '76827687e088f1f0b24bc1abb02e49ad8e17d39086fe245adf211d6c8a441440'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
