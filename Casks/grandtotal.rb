cask 'grandtotal' do
  version '5.0.3'
  sha256 '0afba805ad4137850886f9d37c865296811f2d36f856a16bacd70f2bc66b3401'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '384b98383047955a26b608e0c579f3e092c13287c63fef015a5ed3abadf8a371'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
