cask "trimmy" do
  version "0.9.0"
  sha256 "c9247b55f60776b8bd8bf3aa1d759762df290b32dcff30a28f184699b4989035"

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
