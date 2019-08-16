cask 'pdfelement' do
  version '7.0.9,5237'
  sha256 'b1715fb8d96993567a00216f9fcd9ff70bdad5dafbafb4f19f4e14884f11a46a'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
