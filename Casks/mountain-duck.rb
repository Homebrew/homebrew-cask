cask 'mountain-duck' do
  version '2.6.0.9533'
  sha256 'e0f9eb13ef631117dbe6d5847ff0b8342d3ef2e9c3f15f02588d71953af1eb63'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
