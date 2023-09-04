cask "milkytracker" do
  arch arm: "arm64", intel: "x86_64"

  version "1.04.00"
  sha256 arm:   "e3a1fcead7c6149151042ee75985219ec1893be62f2e789887608c08c2b65c3d",
         intel: "078b341100147d28661c9cfb61ca496e2890e8affc4df2434cb2c5aa5fc26bf3"

  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}-Darwin-#{arch}.dmg",
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
