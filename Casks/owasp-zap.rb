cask "owasp-zap" do
  version "2.9.0"
  sha256 "b00949bf632b16c29085ebb3eb7b0962afe9ded166f6bade8a8ce8d3dbf1b9bd"

  # github.com/zaproxy/zaproxy/ was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}.dmg"
  appcast "https://github.com/zaproxy/zaproxy/releases.atom"
  name "OWASP Zed Attack Proxy"
  name "ZAP"
  homepage "https://www.zaproxy.org/"

  app "OWASP ZAP.app"

  zap trash: [
    "~/Library/Application Support/ZAP",
    "~/Library/Preferences/org.zaproxy.zap.plist",
  ]
end
