cask "loom" do
  arch arm: "-arm64"

  version "0.316.0"
  sha256 arm:   "fda63f907b45d19eb56b71dcc994224f2ac504489e9d27d130cc0ccc98607ceb",
         intel: "497dd8d624a93841b5d4fa62173c10e5a66a2577252648342fd234709de22787"

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
