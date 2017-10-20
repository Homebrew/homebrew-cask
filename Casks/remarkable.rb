cask 'remarkable' do
  version '1.0.0'
  sha256 '5135c6878ebc1d1816aac4bc822b7cd0da3bb05c14167c201aefe20def1e05cf'

  url "http://technology.remarkable.com/remarkable-#{version}.dmg"
  name 'reMarkable'
  homepage 'https://remarkable.com/'

  app 'reMarkable.app'
end
