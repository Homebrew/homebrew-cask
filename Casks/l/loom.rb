cask "loom" do
  arch arm: "-arm64"

  version "0.326.5"
  sha256 arm:   "fcfa35e5d2ca9e3ac3ba553ccf928ef49c2bf86124c0e056fafb43b59fac0e84",
         intel: "71738e916e18098b6f92d36b6bcf627a92f004b3c83a26e3c273843186b7acdc"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
