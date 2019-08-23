cask 'pdfelement' do
  version '7.1.0,5237'
  sha256 '71d68f0e8f3b96a34a9cfda7ccab000741ddc94e91bd9d4188c0aea5ab37da90'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
