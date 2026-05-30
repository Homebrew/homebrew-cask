cask "auto-subs" do
  arch arm: "ARM", intel: "Intel"

  version "3.6.0"
  sha256 arm:   "61e2917f7ade604d2d07f37ddcbedf7313a132ddc9d5800f01d85faed70974b6",
         intel: "889e8812f72a5fccc8acdab157750cba06b39b8dfa9fb25efcbcd38bdd562186"

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
