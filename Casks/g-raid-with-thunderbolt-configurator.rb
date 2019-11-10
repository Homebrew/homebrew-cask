cask 'g-raid-with-thunderbolt-configurator' do
  version '1.1.52'
  sha256 'b3fd3050fa86725f0f801a2c368a9be9fd67e035fc2ff57ce5198950e91ed66c'

  url "http://download.g-technology.com/software/gtc-#{version}.zip"
  name 'G-RAID with Thunderbolt Configurator'
  homepage 'https://support-en.g-technology.com/app/products/detailnew/p/91/~/g-raid-with-thunderbolt-3'

  app 'G-RAID with Thunderbolt Configurator.app'
end
