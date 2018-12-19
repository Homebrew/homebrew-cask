cask 'stand' do
  version '1.0_4'
  sha256 '8919e43c9c591657d8d6961b25e8dc5f77d706d71eb246839be22522a82bb0ec'

  # get-stand-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://get-stand-app.s3.amazonaws.com/#{version.sub(%r{.*_}, '')}/Stand.zip"
  appcast 'https://standapp-sparkle-updater.herokuapp.com/'
  name 'Stand'
  homepage 'https://getstandapp.com/'

  app 'Stand.app'
end
