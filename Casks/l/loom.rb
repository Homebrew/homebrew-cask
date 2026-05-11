cask "loom" do
  arch arm: "-arm64"

  version "0.347.4"
  sha256 arm:   "781252a3372790f45f7cb92d64f94673fe4866d48386b738055ea264a8d8aa9f",
         intel: "9dbec6ebd632d6646b9bf335209d32ba08174a8e4c94b3919754a505b9111af1"

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
