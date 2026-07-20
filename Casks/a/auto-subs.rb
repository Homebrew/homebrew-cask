cask "auto-subs" do
  arch arm: "ARM", intel: "Intel"

  version "3.6.2"
  sha256 arm:   "18f54113fc718ce28c6a9d5d313fb0657b0d572e9269f512436bf25872ced5a1",
         intel: "22795a5c97a73bf165089cf93762772902ded45f3c41db49aeaed82fa8128bec"

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
