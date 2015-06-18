cask :v1 => 'harvest' do
  version :latest
  sha256 :no_check

  url 'https://www.getharvest.com/harvest/mac/Harvest.zip'
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Harvest.app'
end
