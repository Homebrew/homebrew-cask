cask 'pdfelement' do
  version '7.5.7,5237'
  sha256 '1fb20d36f087113c9b8e5a50c2c8b525d9aaeec58042902820125066429021e9'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
