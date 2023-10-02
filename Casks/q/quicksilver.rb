cask "quicksilver" do
  version "2.4.1"
  sha256 "b2258bc4806678692bc0a4a1618f8badbc7afe179e880202159a998464b2b161"

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
