cask "auto-subs" do
  arch arm: "ARM", intel: "Intel"

  version "3.10.0"
  sha256 arm:   "66a5c607ae1b09076192b048edcc00c2954f7a4365070dc4a18d0c9446738593",
         intel: "2142561c27b73869252f21ed618f3445e47167219f2c5dc6ad352c87deb165cc"

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
