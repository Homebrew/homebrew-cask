cask 'neofinder' do
  version '7.0.1'
  sha256 '00d33015bd43a6faaea3ca5609bb4d29ebde62e0c66d985a43c79fb2f05c2afb'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '6e103746983253e88cd032251844b6e4eae3461a1f04c5758ee29283b9645885'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
