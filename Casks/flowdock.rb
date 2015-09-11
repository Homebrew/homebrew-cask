cask :v1 => 'flowdock' do
  version '1.2.4'
  sha256 '01181a755684c21f382531b4431906f9cba82eb1df89e03901bb732c130e24b6'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
