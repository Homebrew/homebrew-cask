cask 'pdfelement' do
  version '7.5.1,5237'
  sha256 'faad33f8b553a7aa304627474c5b5de7c5fe958dc1d644c8be7db5bae43fdc83'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
