cask :v1 => 'flowdock' do
  version '1.2.5'
  sha256 '0b614892e5c4dc63dcacd3e8612f303b0b5cf93c5447f137a1d172e8683d5cec'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
