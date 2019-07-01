cask 'pdfelement' do
  version '7.0.4,5237'
  sha256 '97896572661c3c9baa7c4fbe60c6d78baeada672a0087e1c4e3287a8275ba599'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
