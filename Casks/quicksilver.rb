cask "quicksilver" do
  version "2.3.0"
  sha256 "18e020bcaf01cccf4f7891ea53d5daf23ce75917fe9c22192bf59d45b7b5a65e"

  url "https://github.com/quicksilver/Quicksilver/releases/download/v#{version}/Quicksilver.#{version}.dmg",
      verified: "github.com/quicksilver/Quicksilver"
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
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
    "~/Library/Application Support/Quicksilver",
  ]
end
