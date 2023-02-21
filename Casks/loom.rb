cask "loom" do
  arch arm: "-arm64"

  version "0.156.5"
  sha256 arm:   "677873430a23abcd22d6f8ca10a1e6748c4d4d6e26c1a478ef8bcd331e618bea",
         intel: "647c79c3219a178b607019a20419c93b3caeb5730be1220018672fd60812b942"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
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
