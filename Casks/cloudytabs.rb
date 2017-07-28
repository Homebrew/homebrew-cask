cask 'cloudytabs' do
  version '1.6'
  sha256 '0007f978204e55f3d52b099b143ee8dedb418f3d25ab1805ee1ce16e75a13983'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: '5f2c823f1891600d3a521bf7c90f05da9038af80aeba06f2567f59f4bb77fac1'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
