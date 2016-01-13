cask 'grandtotal' do
  version '4.1.5'
  sha256 '743cc137ab369c8f214fab85753f5b4b0e75a7e82a90995dbfc51e7ff0270a70'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          :checkpoint => '76319b51186047621d3da8a6def039617c7cc0a60515d59d636cd6d38d67ee33'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'GrandTotal.app'
end
