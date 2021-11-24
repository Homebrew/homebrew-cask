cask "burp-suite-professional" do
  version "2021.10.1"
  sha256 "0c5f6d3a3065b12f0c08bacd60fc7430b3341cd2ca7a970820ac207520d0b816"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=MacOsx"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/professional/latest"
    strategy :header_match do |headers|
      headers["location"][%r{/professional[._-]community[._-]v?(\d+(?:-\d+)+)\?}i, 1].tr("-", ".")
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
