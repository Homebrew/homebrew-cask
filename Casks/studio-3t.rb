cask 'studio-3t' do
  version '2018.4.1'
  sha256 '5d2b7815d74d1ed9c4bd4b14cffefa155c299f606c91ee702305f2d56224d919'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
