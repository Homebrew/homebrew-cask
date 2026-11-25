cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0"
  sha256 arm:   "8a697758665f3206adf580e4d82062518d1d15395a0306312201299f5b9cf2bd",
         intel: "9ff8d2c3dc6c429f63165157d26c085d1e897ef855178213bfcf2465fd24511b"

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
