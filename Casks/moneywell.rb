cask 'moneywell' do
  if MacOS.version <= :snow_leopard
    version '1.7.3'
    sha256 '6f34a57999fcc09147035f62caff7efede3a385c0f2e7b6f3f90e9a64e826410'

    url "http://downloads.nothirst.com/MoneyWell_#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}.zip"
  else
    version '3.0.2'
    sha256 'eda48abebc73591780046da0b7c3a4df3816a6315b107dafc9adcfe00d40fadc'

    url "https://moneywellapp.com/mw/builds/MoneyWell-#{version}.zip"
    appcast "https://moneywellapp.com/mw/feeds/#{version.major}x/appcast.xml",
            checkpoint: '8f72dfce40eb99857414bc51defdc10e037eb84c9f316e5c875b1bdd70bf85a0'
  end
  name 'MoneyWell'
  homepage 'https://moneywellapp.com/'

  depends_on macos: '>= :tiger'

  app 'MoneyWell.app'
end
