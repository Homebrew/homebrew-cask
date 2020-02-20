cask 'pdfelement' do
  version '7.5.9,5237'
  sha256 'b482f172508ce80be9b467e968997f47a766ad2ac61c8e67d11c5ec160eb61af'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
