cask 'pdfelement' do
  version '7.6.6'
  sha256 '678f28f3043618b744df5ad588c1a673a9d03064e5301c4a43bc743e0b5c9039'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
