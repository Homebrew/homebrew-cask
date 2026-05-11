cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.2.1"
  sha256 arm:   "2ae730a79aa604272875bbf2476c05b6157a1e1803223263d15a58550456dc42",
         intel: "ccfe2a8089d68641e94c030fe72471d3e4e22fb688f996b378a1b8a03c17d511"

  url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/DeskTime-#{version}-#{arch}.dmg"
  name "DeskTime"
  desc "Time tracker with additional workforce management features"
  homepage "https://desktime.com/"

  livecheck do
    url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "DeskTime.app"

  uninstall quit: "DeskTime"

  zap trash: [
    "~/Library/Application Support/DeskTime",
    "~/Library/Logs/DeskTime",
    "~/Library/Preferences/com.desktime.DeskTime.plist",
  ]
end
