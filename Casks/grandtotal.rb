cask 'grandtotal' do
  version '4.3.8'
  sha256 'fd0f780ff4fe2a3b01c5eece49a70d1fd5b2328f454618e8eb2b6468de38611d'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'd0fe1e69d907fa020dec695ba9baec2f43da5256ca667d6e3fa66eb43dd24d56'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
