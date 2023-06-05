cask "owasp-zap" do
  version "2.12.0"
  sha256 "ca9ca8b8923a451d92372a37aa848d742836cf6a7ee94990bda701f2caa648fc"

  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}.dmg",
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
