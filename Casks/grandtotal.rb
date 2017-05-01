cask 'grandtotal' do
  version '4.3.8'
  sha256 'fd0f780ff4fe2a3b01c5eece49a70d1fd5b2328f454618e8eb2b6468de38611d'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '5634a29753fdeecb019a0c232df81aebe6bc93492391dfdd46e494759087cc8d'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
