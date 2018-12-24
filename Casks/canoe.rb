cask 'canoe' do
  version '1.0.1'
  sha256 '350c5df52e04cdf8ecb1a4470633609a128f8ffd67d8394b851d69c576750f9d'

  url "https://getcanoe.io/files/#{version}/canoe-osx64-#{version}.zip"
  name 'Canoe'
  homepage 'https://getcanoe.io/'

  app "canoe-osx64-#{version}/canoe.app"
end
