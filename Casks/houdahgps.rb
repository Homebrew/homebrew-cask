cask 'houdahgps' do
  version '7.0.1'
  sha256 '20ce071eceed1bbc85fc96710e244bcfcda2762de931ccceb98a516c014248b1'

  url "https://www.houdah.com/houdahGPS/download_assets/HoudahGPS#{version}.zip"
  appcast 'https://www.houdah.com/houdahGPS/updates/cast.xml',
          checkpoint: '1eaa2069c17f1e5c45b6ccbd999004bc6bfcc3b9e610db9055bfe224c46c3071'
  name 'HoudahGPS'
  homepage 'https://www.houdah.com/houdahGPS/'

  app 'HoudahGPS.app'

  zap trash: '~/Library/Application Support/HoudahGPS'
end
