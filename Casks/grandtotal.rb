cask :v1 => 'grandtotal' do
  version '4.0.3'
  sha256 'd20b1132398af4f6969ed7c15e22f8a1f01158e0a758d0798e675531c6af9b1b'

  url "http://mediaatelier.com/GrandTotal3/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php',
          :sha256 => '11fa077fba9cf8c6f9786dd29879edcf664480b1a1a1dbb3137a8a0c94b8a1b0'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'GrandTotal.app'
end
