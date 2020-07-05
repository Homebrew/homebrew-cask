cask 'lifesize' do
  version '2.212.2712'
  sha256 'ae941b7c9561e8757814ea1e20bb475dd032ec217db02c518d37fadec46eec53'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
