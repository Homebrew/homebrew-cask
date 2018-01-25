cask 'navicat-premium' do
  version '12.0.19'
  sha256 '3734226e32fb79f660326f6e0d37404dad87e432dd9cbd5f0a2cd1346835675d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '49f2c18d7c7065a2ad4a498b3208ec1ad4b36e733dcf0e42e9920d9bcd068f70'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
