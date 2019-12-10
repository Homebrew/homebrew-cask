cask 'pdfelement' do
  version '7.5.4,5237'
  sha256 'c6648201b9d573101d377fcafe59c55b6e7b0c266f09b652851e555070bcbf5e'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
