cask 'harvest' do
  version '2.0.6'
  sha256 'b17b9d1df5c740ee793d0a99d804cd91b1394fcb4a8b0ac93d27e5c0b6ada897'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '76397c3831423ff37186261519f4705c97886d87e2b5e3d9f311c8d37b97970b'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
