cask 'pdfelement' do
  version '7.6.1'
  sha256 '7dfd2dcb244ebde050ccaa18b5ee7408b3c64644c2e5992ae685955dd2c4455e'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
