cask 'biba' do
  version '3.8.3787'
  sha256 'f668ba3b087be54c461e18491e987308357689243cec573e6be59b5ed8e77e36'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac',
          checkpoint: '7b4fecf9131a79bb2d7c2eb9420add43231b0155e37ce4e18863585556ef5cd3'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
