cask 'exhaust' do
  version '0.3'
  sha256 '0276c4633c0ab31a16e9f5bd8b55cef4e3d5d880e98b1c29bbe53a37877adc77'

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Exhaust',
          checkpoint: '4ea1ee5c48ed7cd2934e7bd06f1b98f50dec07a31ccb5ed01874ba696470b4de'
  name 'Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
