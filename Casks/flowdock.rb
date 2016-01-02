cask 'flowdock' do
  version '1.2.7'
  sha256 '80cce5d7062ca5e24189d268bb6b0c08ce732c5039156bbe393c0bdecec5eadd'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml',
          :sha256 => '04a4168eee2add871c4341aeea910c8b58f9bed3dc2e0ba3d8c3bc020e125299'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
