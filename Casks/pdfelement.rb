cask 'pdfelement' do
  version '7.6.0,5237'
  sha256 'c58f7ab427ae44c21f364ba77b4cca22ac4ebd50a65c7deca46f46ed3110f818'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.dmg"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
