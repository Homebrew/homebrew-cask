cask :v1 => 'stand' do
  version '1.0'
  sha256 '8919e43c9c591657d8d6961b25e8dc5f77d706d71eb246839be22522a82bb0ec'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://get-stand-app.s3.amazonaws.com/4/Stand.zip'
  name 'Stand'
  appcast 'https://standapp-sparkle-updater.herokuapp.com/',
          :sha256 => '08ede24a7ff0e38bb8960d60b86348465610c223f968147542e43400618817b6'
  homepage 'https://getstandapp.com/'
  license :gratis

  app 'Stand.app'
end
