cask "codeexpander" do
  version "5.13.3"
  sha256 :no_check

  url "https://download.floweb.cn/CodeExpander_latest_universal.dmg",
      verified: "download.floweb.cn/"
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

  zap trash: [
    "~/Library/Caches/codeexpander",
    "~/Library/Caches/com.codeexpander.pro",
    "~/Library/Logs/com.codeexpander.pro",
    "~/Library/WebKit/com.codeexpander.pro",
  ]
end
