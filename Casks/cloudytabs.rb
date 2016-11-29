cask 'cloudytabs' do
  version '1.6'
  sha256 '0007f978204e55f3d52b099b143ee8dedb418f3d25ab1805ee1ce16e75a13983'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: '8934ab65f5388b68ff231beb004bd956da07a8f79cd95060d67502296819d037'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
