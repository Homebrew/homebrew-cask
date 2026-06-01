cask "loom" do
  arch arm: "-arm64"

  version "0.351.2"
  sha256 arm:   "1586756635c622a2e3e1532387e6de7800507e5a780eddea30121749e71e6544",
         intel: "698b9543ef2f1d567ac0fcc2e49719ed95c83f9174722b51593c13276218185a"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
