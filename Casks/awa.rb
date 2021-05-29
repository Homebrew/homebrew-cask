cask "awa" do
  version "1.5.7"
  sha256 "2d1bba828ca64afb19511b6d770414e06659af97a85ca05dbc7cde36d1b79e01"

  url "https://download-d.awa.io/mac/stable/AWASetup-v#{version}.dmg",
      verified: "download-d.awa.io/mac/stable/"
  name "AWA"
  homepage "https://awa.fm/"

  livecheck do
    url "https://pd.awa.io/mac/stable/latest"
    strategy :header_match
  end

  auto_updates true

  app "AWA.app"

  uninstall launchctl: "fm.awa.liverpool",
            quit:      "fm.awa.liverpool"

  zap trash: [
    "~/Library/Application Support/AWA",
    "~/Library/Preferences/fm.awa.liverpool.plist",
    "~/Library/Preferences/fm.awa.liverpool.helper.plist",
    "~/Library/Saved Application State/fm.awa.liverpool.savedState",
  ]
end
