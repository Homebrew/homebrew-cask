cask 'harvest' do
  version '2.0.4'
  sha256 'fba658d0232ffddd0f961e461d6f8103acf74fffe981e5618439a7ac07010ae1'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: 'e1251a07581c4ead95b31d21d1c2c95426762392e1c2656aec4d61629c09c770'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
