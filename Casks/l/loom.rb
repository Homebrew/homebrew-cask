cask "loom" do
  arch arm: "-arm64"

  version "0.231.3"
  sha256 arm:   "3a3a424ffba58765a0a8ca32665a53fce895b7dd9ba05344392c19156198af4a",
         intel: "03e183fa669d100db1d110f8dd85c78cad4890750ba16b8bb87a0f99f9cbc20a"

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
