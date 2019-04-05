cask 'subsurface' do
  version '4.8.5'
  sha256 '39606c3122d6b3e885214d3212fee296adafd098c26489c5f34c7ca8a900e078'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
