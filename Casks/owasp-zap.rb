cask "owasp-zap" do
  version "2.10.0"
  sha256 "bc25ff4fbd21fc36449c15ef66e109b72802ad9eedfc1ae122569cbf91ab9829"

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
