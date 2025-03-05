cask "loom" do
  arch arm: "-arm64"

  version "0.280.1"
  sha256 arm:   "2998937ab8087f17a40ff3faef75fd083d19a077d1fd78fedcbbdb3533137e14",
         intel: "b01ab7b734ab4149639c35494223c997d195e19ad7620fd98bbd9d652748a5ca"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
