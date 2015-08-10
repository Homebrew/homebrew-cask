cask :v1 => 'harvest' do
  version '1.4.3'
  sha256 'fc4bac07ab6aff2fd5d1e9aa1ef653bb5b6b4b44322acecb1d5b01e1d10eb1dd'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Harvest.app'
end
