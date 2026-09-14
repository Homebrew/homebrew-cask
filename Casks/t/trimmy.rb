cask "trimmy" do
  version "0.11.1"
  sha256 "a7c75d6bf4aa4b085635f0390524575d3d9d71cc744abb105c9c51209c0ccbcc"

  url "https://github.com/steipete/Trimmy/releases/download/v#{version}/Trimmy-#{version}.zip"
  name "Trimmy"
  desc "Paste-once, run-once clipboard cleaner for terminal snippets"
  homepage "https://github.com/steipete/Trimmy"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Trimmy.app"

  zap trash: [
    "~/Library/Application Scripts/com.steipete.trimmy",
    "~/Library/Application Support/Trimmy",
    "~/Library/Caches/com.steipete.trimmy",
    "~/Library/Containers/com.steipete.trimmy",
    "~/Library/HTTPStorages/com.steipete.trimmy",
    "~/Library/HTTPStorages/com.steipete.trimmy.binarycookies",
    "~/Library/Preferences/com.steipete.trimmy.plist",
    "~/Library/Saved Application State/com.steipete.trimmy.savedState",
    "~/Library/WebKit/com.steipete.trimmy",
  ]
end
