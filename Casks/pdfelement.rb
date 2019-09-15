cask 'pdfelement' do
  version '7.2.0,5237'
  sha256 '9b91cddf6830a6605fe0736c1f97e9339558f7549ffa04f3a72f5079bea4c569'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
