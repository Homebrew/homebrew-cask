cask 'pdfelement' do
  version '7.6.2'
  sha256 '7ff04cf7c66bcce22fc91bb2cd92224cb72e0a3de9b75eb71938273e350ed5da'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
