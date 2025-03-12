cask "loom" do
  arch arm: "-arm64"

  version "0.281.3"
  sha256 arm:   "4e02e59faa5093df60c93a34e35dba1ca85b91caa45fecfbd6671bd83f921af3",
         intel: "c40ca0265b2fcfcbf07eddbcd8017bae191dc83d11d0cbccd5ab36dafaec83ca"

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
