cask 'pdfelement' do
  version '7.0.5,5237'
  sha256 '7085be4c2b402d3fa2be6634060e71da24a2038df1d312337ec2c26690ce5209'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
