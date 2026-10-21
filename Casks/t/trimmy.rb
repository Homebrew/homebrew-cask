cask "trimmy" do
  version "0.11.5"
  sha256 "e268eaf4b3412f4deef33e6adc597496a5500ca08d58af9c9bb329d3049bb251"

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
