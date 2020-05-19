cask 'pdfelement' do
  version '7.6.3'
  sha256 'f2065596f3b2854a7ab05985d2e7dc00659f93898bbd06a1dd0c199b11a1d948'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
