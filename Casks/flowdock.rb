cask 'flowdock' do
  version '1.2.9'
  sha256 '803c42d393f91f2b8f08ad890f7603c9607d9adcac5acaf495e9ba66441657e7'

  # amazonaws.com/flowdock-resources was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml',
          checkpoint: 'e032b539857ff609e45db3de3e095c2d9334781bb6a29e6cf0192a63bd41a134'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'

  app 'Flowdock.app'
end
