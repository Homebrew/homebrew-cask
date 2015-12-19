cask 'biba' do
  version '3.6.3699'
  sha256 '179b511ad7c6cbb26cfdf7ecffe3a145d49372c2bff397c38c76f4254dc46e80'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac',
          :sha256 => 'cfefc565fa942aa6d1da310db7a72a37e7ba4dcef26353fef020e35da2c39f77'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
