cask "sidekick" do
  version "3.0"
  sha256 "1aaeee17ffb4b05ca2a9168a2319dd9b4d31f485868433a858acfda86a23a4d8"

  url "https://github.com/synth-inc/onit/releases/download/v#{version}/SideKick-#{version}.dmg",
      verified: "github.com/synth-inc/onit/"
  name "SideKick"
  desc "AI chat panel that docks next to your active window with on-screen context"
  homepage "https://www.getonit.ai/"

  livecheck do
    url "https://raw.githubusercontent.com/synth-inc/onit/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SideKick.app"

  uninstall quit: "inc.synth.onit.sidekick"

  zap trash: [
    "~/Library/Caches/inc.synth.onit.sidekick",
    "~/Library/HTTPStorages/inc.synth.onit.sidekick",
    "~/Library/Preferences/inc.synth.onit.sidekick.plist",
    "~/Library/Saved Application State/inc.synth.onit.sidekick.savedState",
  ]
end
