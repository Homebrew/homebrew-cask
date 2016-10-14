cask 'coronasdk' do
  version '2016.2906'
  sha256 'e4db1eef4be03671fd18b505a7a9f44291a4beba8d89d734b55b836c83639aa6'

  url "https://developer.coronalabs.com/sites/default/files/CoronaSDK-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/products/corona-sdk/'

  suite 'CoronaSDK'
end
