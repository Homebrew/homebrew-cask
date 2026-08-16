cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.43"
  sha256 arm:   "3c52b675b22d323f4a8ec1ebc65a117e1f46c7b295cdb0364925554582fe7821",
         intel: "e151f187ac6fca72e81c040d48d787ede39137a3c78696edd18c4d336c6fa68d"

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
