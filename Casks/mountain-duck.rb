cask 'mountain-duck' do
  version '3.2.0.14842'
  sha256 '4d235f14916316871c7920b41aa9bacf2edc8ebf60c46e77b7f3176d7747e4ab'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
