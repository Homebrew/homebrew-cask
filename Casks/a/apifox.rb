cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.42"
  sha256 arm:   "4ba57fc3e8c78f37c166b24c10c72aedcf34776d2efc9eec9c85a4498072c8e1",
         intel: "52f710aa459a6b23562c9099daa82283fc8f44f97fd045aa60e61d7182fb6cab"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg",
      verified: "file-assets.apifox.com/download/"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://github.com/apifox/apifox"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac#{livecheck_arch}/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Apifox.app"

  zap trash: [
    "~/.apifox-ai-agent-debugger",
    "~/Library/Application Support/apifox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cn.apifox.app.sfl*",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
