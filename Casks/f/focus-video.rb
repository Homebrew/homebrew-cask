cask "focus-video" do
  version "2.0.3"
  sha256 "a8382edcac11f444593285e42cebb4b8b6dcb4301045cb528c47a08180fdcbf5"

  url "https://updates.use-focus.com/macos/Focus-Free_#{version}_universal.dmg"
  name "Focus"
  desc "Offline video player, local folder/SD browser, and lossless multi-cut editor"
  homepage "https://use-focus.com/"

  livecheck do
    url "https://updates.use-focus.com/focus/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: "focus"
  depends_on macos: :sonoma

  app "Focus.app"

  zap trash: [
    "~/Library/Application Support/com.use-focus.focus",
    "~/Library/Caches/com.use-focus.focus",
    "~/Library/Logs/com.use-focus.focus",
    "~/Library/Preferences/com.use-focus.focus.plist",
    "~/Library/Saved Application State/com.use-focus.focus.savedState",
  ]
end
