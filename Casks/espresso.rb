cask :v1 => 'espresso' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/espresso/get/'
  appcast 'https://update.macrabbit.com/espresso/2.2.3.xml',
          :sha256 => '19e9805da329eab855c64bf36a2175a24e19cb2c32c98e14fdfa0828fe64e255'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'
  license :freemium

  app 'Espresso.app'
end
