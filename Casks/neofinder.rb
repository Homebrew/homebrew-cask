cask 'neofinder' do
  version '7.1'
  sha256 '15dcb59153a26fed860075376629885596b4046d29209a321d4b6a39da05bf1e'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '9e060356cbe9010d0c9e284f51a42dbaaf4e91fdd1f8f94e07cd86e21d42ada8'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
