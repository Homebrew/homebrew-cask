cask "burp-suite-professional" do
  version "2021.10.1"
  sha256 "1dda661700871cd0917ff9a56d4094ed6473dad0503444380bee23706214e31b"

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
