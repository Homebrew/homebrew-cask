cask "auto-subs" do
  arch arm: "ARM", intel: "Intel"

  version "3.6.1"
  sha256 arm:   "6142bf05eb56eb0d0246a31c08fb25e726fb93bca427f71d94e9fee083b52eeb",
         intel: "ccd1022a7b0707e4bfc4b61552918e16aee4fbe55f05e45c83fb3c24d97f1a11"

  url "https://github.com/tmoroney/auto-subs/releases/download/v#{version}/AutoSubs-Mac-#{arch}.pkg"
  name "AutoSubs"
  desc "Subtitle generator for audio and video files"
  homepage "https://github.com/tmoroney/auto-subs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "AutoSubs-Mac-#{arch}.pkg"

  uninstall quit:    "com.autosubs",
            pkgutil: "com.tom-moroney.autosubs",
            delete:  [
              "/Library/Application Support/Blackmagic Design/DaVinci Resolve/Workflow Integration Plugins/AutoSubs.lua",
              "~/Library/Application Support/Adobe/CEP/extensions/com.autosubs.adobe",
              "~/Library/Application Support/Blackmagic Design/DaVinci Resolve/Fusion/Scripts/Utility/AutoSubs",
              "~/Library/Application Support/Blackmagic Design/DaVinci Resolve/Fusion/Scripts/Utility/AutoSubs.lua",
            ]

  zap trash: [
    "~/Library/Application Support/com.autosubs",
    "~/Library/Caches/com.autosubs",
    "~/Library/HTTPStorages/com.autosubs",
    "~/Library/Logs/com.autosubs",
    "~/Library/Preferences/com.autosubs.plist",
    "~/Library/Saved Application State/com.autosubs.savedState",
    "~/Library/WebKit/com.autosubs",
  ]
end
