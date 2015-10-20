cask :v1 => 'harvest' do
  version '1.4.4'
  sha256 '27d5f2a5dc9f954c6fb073a77ea6d17a16c69082a0b9a046682e26ab29fca9d9'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
