cask :v1 => 'coronasdk' do
  version '2014.2511'
  sha256 '19f2d1a7bd3ffb45f830cebd1d2fcfd292967cb3f5211e29e3c73b66a8f220e6'

  url "https://developer.coronalabs.com/sites/default/files/CoronaSDK-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/products/corona-sdk/'
  license :gratis

  suite 'CoronaSDK'
end
