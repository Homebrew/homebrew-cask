cask :v1 => 'subsmarine' do
  version '1.2'
  sha256 '337722dedb0682d34f11f2decc3ad827849032f9a0e795d2f89c5c4bd0c32286'

  url "http://www.cocoawithchurros.com/downloads/subsmarine.app.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          :sha256 => '9659830b134ac12326639e1b3f7ba06945cc18db343890e06a4c7f9d9dce8912'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :unknown    # todo: improve this machine-generated value

  app 'SubsMarine.app'
end
