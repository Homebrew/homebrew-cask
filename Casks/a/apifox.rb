cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.46"
  sha256 arm:   "715c3e7b50123fc1b0abe0c3696084edfc97ba1316a2b4708612f9423e6395ec",
         intel: "a5735188e0c6e00483e1d1b780bc627f12968812a7aa4190c772fc327ac3f0d7"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://github.com/apifox/apifox"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac#{livecheck_arch}/latest-mac.yml?noCache=#{Time.now.to_i * 2}"
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
