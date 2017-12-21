cask 'navicat-premium-essentials' do
  version '12.0.19'
  sha256 'a09ad00c0e99a13e676581bc58d1f9ed923241fb73f1e84f37c267708a96bba5'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '49f2c18d7c7065a2ad4a498b3208ec1ad4b36e733dcf0e42e9920d9bcd068f70'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
