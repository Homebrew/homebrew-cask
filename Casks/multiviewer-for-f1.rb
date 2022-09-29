cask "multiviewer-for-f1" do
  version "1.8.0-rc.2"
  sha256 "47ecfbea43757991b05e651ac6f78102d3f411517eef9b2e58784744ce90503f"

  url "https://releases.f1mv.com/download/79334767/MultiViewer.for.F1-#{version}-universal.dmg"
  name "multiviewer-for-f1"
  desc "Unofficial desktop client for F1TV"
  homepage "https://beta.f1mv.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{"url":.*?/MultiViewer[._-]for[._-]F1[._-](\d+(?:[._-][\d\w]+)*)[._-]universal\.dmg}i)
  end

  app "MultiViewer for F1.app"

  zap trash: [
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
