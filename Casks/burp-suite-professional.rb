cask "burp-suite-professional" do
  version "2021.10.2"
  sha256 "3f262e322dc716ccd1cb91663af9d1652dd281564cc4ac3ed789feba69a24586"

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
