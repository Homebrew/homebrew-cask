cask 'stand' do
  version '1.0_4'
  sha256 '8919e43c9c591657d8d6961b25e8dc5f77d706d71eb246839be22522a82bb0ec'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://get-stand-app.s3.amazonaws.com/#{version.sub(%r{.*_}, '')}/Stand.zip"
  appcast 'https://standapp-sparkle-updater.herokuapp.com/',
          :checkpoint => 'f09774db625e43d2e5f3bc0d68a10b8e9c3a4ccc5e02f6347bcf7e6526a64e4a'
  name 'Stand'
  homepage 'https://getstandapp.com/'
  license :gratis

  app 'Stand.app'
end
