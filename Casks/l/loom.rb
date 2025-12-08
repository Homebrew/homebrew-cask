cask "loom" do
  arch arm: "-arm64"

  version "0.325.4"
  sha256 arm:   "b96be1d81e065a52c0113e1db7b2c1b9517535bc0dcc07f4aa290d4eec653490",
         intel: "9046851505796e85a75af46e9f569f3e45dadc13861f4c94f2587946becd0d23"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
