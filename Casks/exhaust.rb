cask 'exhaust' do
  version '0.3'
  sha256 '0276c4633c0ab31a16e9f5bd8b55cef4e3d5d880e98b1c29bbe53a37877adc77'

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Exhaust',
          checkpoint: '1afea50843297b97f95a4566666906cf8102b4626f165a2ef6193eae37134bda'
  name 'Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'

  app 'Exhaust/Exhaust.app'
end
