cask 'pdfelement' do
  version '7.3.3,5237'
  sha256 '395f977a674aa50db1e9f417bb163d24ae4769cae00c58427eecbf58d5729d41'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
