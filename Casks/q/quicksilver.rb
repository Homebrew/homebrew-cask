cask "quicksilver" do
  version "2.6.0"
  sha256 "47d4fdfb128109e213ee21c272a100fa0408d389932c47f66b0440b5a0d32c8c"

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
