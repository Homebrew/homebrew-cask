cask 'grandtotal' do
  version '5.1.1.4'
  sha256 'e35924df594fbbb69edbedf6545775dbe3cd35e4f5c245085437dfdfce69d4de'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '13b8c6eea5cb6b3e1c5e65dd9afc7e5492cf1deded57645c42492fc1097de0fc'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
