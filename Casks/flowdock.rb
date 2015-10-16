cask :v1 => 'flowdock' do
  version '1.2.7'
  sha256 '80cce5d7062ca5e24189d268bb6b0c08ce732c5039156bbe393c0bdecec5eadd'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
