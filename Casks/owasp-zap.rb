cask "owasp-zap" do
  arch arm: "_aarch64"

  version "2.13.0"
  sha256 arm:   "699b0244d730e9814e11e0252b02d05b6c12fbb2c38c5b3c0cfce4a028357436",
         intel: "914ca4a6ce2ba6e44f9ad0a9720f5a1879a16e56a56ac63fd0a5d67d54df0148"

  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}#{arch}.dmg",
      verified: "github.com/zaproxy/zaproxy/"
  name "OWASP Zed Attack Proxy"
  name "ZAP"
  desc "Free and open source web app scanner"
  homepage "https://www.zaproxy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OWASP ZAP.app"

  zap trash: [
    "~/Library/Application Support/ZAP",
    "~/Library/Preferences/org.zaproxy.zap.plist",
  ]
end
