cask "quicksilver" do
  version "2.5.0"
  sha256 "5d3d18c6717fbf110230626530cf171b0c070ac8fdd9fa06321e3a9ad4488b8d"

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
  depends_on macos: ">= :mojave"

  app "Quicksilver.app"

  zap trash: [
    "~/Library/Application Support/Quicksilver",
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
  ]
end
