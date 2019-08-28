cask 'canoe' do
  version '1.0.2'
  sha256 'bd6bada55dd7667b8f03a8fe656e19076dc8c74ecb72516759c026d4631feea5'

  url "https://getcanoe.io/files/#{version}/canoe-osx64-#{version}.zip"
  appcast 'https://getcanoe.io/download/'
  name 'Canoe'
  homepage 'https://getcanoe.io/'

  app "canoe-osx64-#{version}/canoe.app"
end
