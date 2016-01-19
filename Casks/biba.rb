cask 'biba' do
  version '3.7.3752'
  sha256 'fad2844cf812ee2b51c885e79d2a6fee9709ea4106e2e7ab49bcfa86b02ba7a4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac',
          checkpoint: '66a1fa16c09efafc80b9057bb243048c1ef501303853abbefb2688a5cec39003'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
