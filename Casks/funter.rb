cask 'funter' do
  version '2.9'
  sha256 '1c03415b1550e8758089d3b748d9142c148821f2c0bea006c83da39e50593927'

  url "https://nektony.com/promo/funter/update/funter_v#{version}.zip"
  appcast 'https://nektony.com/promo/funter/update/update.xml',
          checkpoint: '257e38748c84d5e706b9a0557cb95f073797267599bee63a54ee0297c864dbb8'
  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
