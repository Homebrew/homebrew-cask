cask "loom" do
  arch arm: "-arm64"

  version "0.344.0"
  sha256 arm:   "c5c561c45ce97d6bfaf344b0f12417165345e69a78dee3cfd02705e3c56b929d",
         intel: "a0341009f19eaef107c64a4b9ec91c27cfe405520bd24ff81b6726cdd71998af"

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
