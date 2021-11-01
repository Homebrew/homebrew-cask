cask "quicksilver" do
  version "1.6.1"
  sha256 "abc2c084913f95d3036a0cfe696bf9cd4b9fd0d6c3c16bec6e4a98ae600492c8"

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  name "Quicksilver"
  desc "Productivity application"
  homepage "https://qsapp.com/"

  livecheck do
    url "https://qsapp.com/archives/"
    strategy :page_match
    regex(%r{href=.*?/Quicksilver%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true

  app "Quicksilver.app"

  zap trash: [
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
    "~/Library/Application Support/Quicksilver",
  ]
end
