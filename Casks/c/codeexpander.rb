cask "codeexpander" do
  version "7.0.4"
  sha256 :no_check

  url "https://download.floweb.cn/CodeExpander_latest_universal.dmg"
  name "CodeExpander"
  desc "Text expansion, screenshot & annotation, and clipboard management tool"
  homepage "https://codeexpander.com/"

  livecheck do
    url "https://download.floweb.cn/codeexpander-latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "CodeExpander.app"

  uninstall launchctl: "CodeExpander",
            quit:      "com.codeexpander.pro"

  zap trash: [
    "~/Library/Application Support/com.codeexpander",
    "~/Library/Caches/codeexpander",
    "~/Library/Caches/com.codeexpander.pro",
    "~/Library/LaunchAgents/CodeExpander.plist",
    "~/Library/Logs/com.codeexpander.pro",
    "~/Library/WebKit/com.codeexpander.pro",
  ]
end
