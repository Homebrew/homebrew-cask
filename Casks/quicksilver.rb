cask "quicksilver" do
  version "2.1.0"
  sha256 "ef14a5ace75ac1db8054f79b0c8f81b5336430e637c33f403ae779294b52a7b3"

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
