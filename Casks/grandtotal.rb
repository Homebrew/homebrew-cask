cask :v1 => 'grandtotal' do
  version '3.4.4'
  sha256 '53a47260c3957ebfc2afe30c1e58d1f4fba0ceef6de6ee8dd20d470947373f16'

  url "http://mediaatelier.com/GrandTotal3/GrandTotal_#{version}.zip"
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php',
          :sha256 => '11fa077fba9cf8c6f9786dd29879edcf664480b1a1a1dbb3137a8a0c94b8a1b0'
  name 'GrandTotal'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "GrandTotal #{version.to_i}.app"
end
