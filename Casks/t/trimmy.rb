cask "trimmy" do
  version "0.11.3"
  sha256 "8381e3289d87e136fd667bc693930f5e820e4538adadc1d3466e6dd933c54e57"

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
