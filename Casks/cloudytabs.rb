cask 'cloudytabs' do
  version '1.7'
  sha256 '7cf09822233e13be6d2b229a42f20cb06519939b722e10ee28eed50ff4dac22e'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: '5f2c823f1891600d3a521bf7c90f05da9038af80aeba06f2567f59f4bb77fac1'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
