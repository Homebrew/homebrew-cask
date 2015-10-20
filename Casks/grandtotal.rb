cask :v1 => 'grandtotal' do
  version '4.0.1'
  sha256 '15f04b9ade6f817b7014e4a61de779283d66fc088b10fd71e738d33fad296bec'

  url "http://mediaatelier.com/GrandTotal3/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php',
          :sha256 => '11fa077fba9cf8c6f9786dd29879edcf664480b1a1a1dbb3137a8a0c94b8a1b0'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "GrandTotal #{version.to_i}.app"
end
