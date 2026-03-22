cask "quicksilver" do
  version "2.5.7"
  sha256 "7bbee33b2807aba306328c2ddad762b930c505f8714a9a4c64e8a71b0a8c4a48"

  url "https://github.com/quicksilver/Quicksilver/releases/download/v#{version}/Quicksilver.#{version}.dmg",
      verified: "github.com/quicksilver/Quicksilver/"
  name "Quicksilver"
  desc "Productivity application"
  homepage "https://qsapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Quicksilver.app"

  zap trash: [
    "~/Library/Application Support/Quicksilver",
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
  ]
end
