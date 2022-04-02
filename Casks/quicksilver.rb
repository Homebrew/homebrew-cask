cask "quicksilver" do
  version "2.0.0"
  sha256 "a0a60697bbd6960604a1f7b199f5273ea0fa28d2d41d27c0df398ea289fcddcb"

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  name "Quicksilver"
  desc "Productivity application"
  homepage "https://qsapp.com/"

  livecheck do
    url "https://qsapp.com/archives/"
    regex(%r{href=.*?/Quicksilver%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true

  app "Quicksilver.app"

  zap trash: [
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
    "~/Library/Application Support/Quicksilver",
  ]
end
