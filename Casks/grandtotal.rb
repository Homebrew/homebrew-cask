cask 'grandtotal' do
  version '4.3.3'
  sha256 '350d93c0d76637be413f89831c98af0ad956bd6e00be66311e2946783c9a0d61'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'dc49981ad74f180e7d049c5131193855e58a352c3c6211765c08d4877036a9de'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
