cask "milkytracker" do
  version "1.05.01"
  sha256 "465e399e5174255f33d92490052c7a851019bf5c9ba798bd83fc384158b05c71"

  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}-Universal.dmg",
      verified: "github.com/milkytracker/MilkyTracker/"
  name "MilkyTracker"
  desc "Music tracker compatible with FT2"
  homepage "https://milkytracker.titandemo.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MilkyTracker.app"

  zap trash: "~/Library/Preferences/com.Titan.MilkyTracker.plist"
end
