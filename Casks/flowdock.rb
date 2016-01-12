cask 'flowdock' do
  version '1.2.7'
  sha256 '80cce5d7062ca5e24189d268bb6b0c08ce732c5039156bbe393c0bdecec5eadd'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml',
          :sha256 => '3befc9c32e9aea1edf57563cc86407b87b056ad5657da6180c785a4058c74103'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
