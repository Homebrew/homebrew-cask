cask :v1 => 'apikitchen' do
  version '0.1'
  sha256 '98a8bbd80442bc8af50f2fca456e4357db27093133a421b29fe51c22b2e53e53'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/envolto-static/ApiKitchen_#{version}.dmg"
  appcast 'http://apikitchen.com/updates/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'APIKitchen'
  homepage 'http://apikitchen.com/'
  license :gratis

  app 'ApiKitchen.app'
end
