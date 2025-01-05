cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.3"
  sha256 arm:   "f56f29d589e59204a620e1bb8ed29b3f63e8bd3b8fb9ebca51ef507c63ef30a9",
         intel: "290742c463621e4eb02b60339e5503a61a90a3b602f3cc37b7b4843d71f3ff16"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
