cask 'jaksta' do
  version '2.2.3'
  sha256 '92cb1eeff5360e0d2ac890556f92c1f0ada74c32209eea5e4eaa27ca3204cc7c'

  url "https://www.jaksta.com/services/download/mac/jaksta-media-recorder/#{version}"
  appcast 'https://www.jaksta.com/Services/VersionDirector/jmr-mac?v=2.2.0',
          checkpoint: '40e7d49f541432521eff2f08a733d88034114b56ec3980f32914b9f40c8099d5'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/products'

  pkg "JMR-#{version}.pkg"

  uninstall pkgutil: 'com.shedwork.Jaksta'
end
