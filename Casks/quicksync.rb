cask 'quicksync' do
  version '3.6'
  sha256 '1152350df079c1652572be544b2b003f4b662033c70c536864c0db42d5259dfa'

  url "https://gse.gigaset.com/fileadmin/gigaset/images/CORE/QuickSync/Mac_#{version}/QuickSync_#{version.dots_to_underscores}.dmg"
  appcast 'https://cms.gigaset.com/macsw/gqs/leopard/appcast.xml',
          checkpoint: 'be64a83ba07a1dbe40c1796e933b01f525579a3b55d81c8337b7e644b33576a1'
  name 'QuickSync'
  homepage 'https://www.gigaset.com/hq_en/cms/home/support/support/downloads/quicksync/quicksync-for-mac.html'

  app 'QuickSync.app'
end
