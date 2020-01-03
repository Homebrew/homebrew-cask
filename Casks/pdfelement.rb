cask 'pdfelement' do
  version '7.5.5,5237'
  sha256 'f171e3a522ed7c7d268ec90976275c26fe2c91635d1f514de1b6d2fc91425ae3'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
