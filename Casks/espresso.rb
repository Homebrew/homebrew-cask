cask 'espresso' do
  version '2.2.3'
  sha256 '5d6be08f97fb87cf4a1ba713c4ea7f9f09c7eb11658891725df171fe1cf73442'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/macrabbit/downloads/Espresso%20#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          :checkpoint => '3d29f24612628fa2128d3dbf4f10cfc20a2b5bd5a68a805ea160955ce2830780'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'
  license :freemium

  app 'Espresso.app'
end
