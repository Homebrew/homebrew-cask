cask 'pdfelement' do
  version '7.6.5'
  sha256 'f0f974280370c81835678bc181d4d9d38b1039c6bf5f6d24fe5b86a71725d2f5'

  url 'http://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg'
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
