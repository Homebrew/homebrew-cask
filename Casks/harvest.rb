cask 'harvest' do
  version '1.5.0'
  sha256 '7c5ba5e44c39f7630627b82b221367fbf2a1b67e057c51890d0b4d629ff24852'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          :sha256 => '2b064730feb48d18faf6f099b93c6273ff9214ee8b9daa74f64d829921b0de9c'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
