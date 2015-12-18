cask 'grandtotal' do
  version '4.1.3'
  sha256 '17a3fea3abab3013ee1181cd1d7bebe499d6d5f3e362e116cc3345c0ea3e319a'

  url "http://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal4/feed.php',
          :sha256 => 'ab9702415ea6acfc11715b8b359a7b97f2b91311d29ae46e6f9a6ab8a3898a90'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'GrandTotal.app'
end
