cask 'pdfelement' do
  version '7.3.3,5237'
  sha256 '863d07ea666278178845a31af31033abb56e47d95f701be660e0bf15c98b406a'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement_full#{version.after_comma}.zip"
  appcast 'https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237'
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
