cask :v1 => 'espresso' do
  version '2.2.3'
  sha256 '5d6be08f97fb87cf4a1ba713c4ea7f9f09c7eb11658891725df171fe1cf73442'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/macrabbit/downloads/Espresso%20#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          :sha256 => '19e9805da329eab855c64bf36a2175a24e19cb2c32c98e14fdfa0828fe64e255'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'
  license :freemium

  app 'Espresso.app'
end
