cask 'grandtotal' do
  version '4.1.4'
  sha256 '136786ac36d96c543bd3bf0c3cdc714a4c806aa1ec6d95f6f8c1e10f1fbad2d2'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          :sha256 => '59121a6b1a2a5ec64aa6df38e804614c20fab951ff9f195211285844d7366f08'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'GrandTotal.app'
end
