cask "bettertouchtool" do
  version "5.444,2025052805"
  sha256 "3221ea74fa2ac66658755f3739ee241ede5237e63860b053d7ff78b785011434"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customise input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast_macupdater.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "bettertouchtool@alpha"
  depends_on macos: ">= :big_sur"

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
