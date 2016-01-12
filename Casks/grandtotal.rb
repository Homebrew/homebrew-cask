cask 'grandtotal' do
  version '4.1.5'
  sha256 '743cc137ab369c8f214fab85753f5b4b0e75a7e82a90995dbfc51e7ff0270a70'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          :sha256 => 'e0021023a0e17d686d6dc52f57766f3bf8266cea9f2086dbcdd58252ec5724fb'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'GrandTotal.app'
end
