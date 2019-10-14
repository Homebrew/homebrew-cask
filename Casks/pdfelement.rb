cask 'pdfelement' do
  version '7.3.1,5237'
  sha256 '3edb40bd86cb6edb7a4ed8f9209d3bc4839a76285a0891a6dedab753bf5d3bf0'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
