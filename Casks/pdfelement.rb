cask 'pdfelement' do
  version '7.6.4'
  sha256 'da1e2f9292664b5ca5f1575c1822ad0fb374ec36f9a9c356839f214de98e078e'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
