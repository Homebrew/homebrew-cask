cask "burp-suite" do
  version "2021.10.1"
  sha256 "f16b06acb3682c1918d4e528ac276733fd8fa61f052e5db22f44d5440ec5d3a1"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/community/latest"
    strategy :header_match do |headers|
      headers["location"][%r{/professional[._-]community[._-]v?(\d+(?:-\d+)+)\?}i, 1].tr("-", ".")
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
