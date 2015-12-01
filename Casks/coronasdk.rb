cask :v1 => 'coronasdk' do
  version '2015.2731'
  sha256 '6eaa5bb4745d88d2dd548816a24ee4583a9bd5b6e41659aac151d7a1653db686'

  url "https://developer.coronalabs.com/sites/default/files/CoronaSDK-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/products/corona-sdk/'
  license :gratis

  suite 'CoronaSDK'
end
