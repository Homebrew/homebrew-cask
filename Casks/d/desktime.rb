cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.1.0"
  sha256 arm:   "68946bf3a78d94bbb37e71d0ebf40161455d2618fcf13914d0b7197736cd94b0",
         intel: "73c7934d879b36a3f8a1e5eb69f7cf1d3ea26e421de65c92035b7bd704f6d1ad"

  url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/DeskTime-#{version}-#{arch}.dmg"
  name "DeskTime"
  desc "Time tracker with additional workforce management features"
  homepage "https://desktime.com/"

  livecheck do
    url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "DeskTime.app"

  uninstall quit: "DeskTime"

  zap trash: [
    "~/Library/Application Support/DeskTime",
    "~/Library/Logs/DeskTime",
    "~/Library/Preferences/com.desktime.DeskTime.plist",
  ]
end
