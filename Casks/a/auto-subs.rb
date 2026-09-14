cask "auto-subs" do
  arch arm: "ARM", intel: "Intel"

  version "3.8.0"
  sha256 arm:   "14ab69934a085760334403e1ece1954f4518de2ee77a6fab3757f0d1f3e960f1",
         intel: "694fce21dbc5b57532264e811ca8c2a7cc2e47f43ab4e55b86b87f3791d821eb"

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
