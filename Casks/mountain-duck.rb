cask 'mountain-duck' do
  version '3.2.1.15003'
  sha256 '00abf2d58f15d579018744ca48df4c1f19345cdf146debbd6b86a1e48b46f8d7'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
