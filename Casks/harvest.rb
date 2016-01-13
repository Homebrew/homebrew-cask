cask 'harvest' do
  version '1.5.0'
  sha256 '7c5ba5e44c39f7630627b82b221367fbf2a1b67e057c51890d0b4d629ff24852'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          :checkpoint => '9e616b4d70accff2dc64f23e9d94b64aef4db292b2a591667d48f31d99ceafa1'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
