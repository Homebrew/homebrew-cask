cask "nudge-run" do
  version "1.0.0"
  sha256 "b5f61ba7b8bd4c6b7676c86acd7212cb516b911e2b1fc4e21d45d437eca63942"

  url "https://github.com/mikusnuz/nudge/releases/download/v#{version}/Nudge.dmg",
      verified: "github.com/mikusnuz/nudge/"
  name "Nudge"
  desc "Lightweight window manager with keyboard shortcuts and drag-to-edge snapping"
  homepage "https://nudge.run/"

  depends_on macos: ">= :big_sur"

  app "Nudge.app"

  zap trash: "~/Library/Preferences/app.nudge.Nudge.plist"
end
