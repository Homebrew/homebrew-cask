cask "mi" do
  version "3.7.4,1235"
  sha256 "2bd7eb7d9976fb5a3b4420dd60e64c0dbbe8ba9c600881f0dbcfec57c43c8544"

  url "https://www.mimikaki.net/download/mi#{version.csv.first}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/"

  livecheck do
    url "https://www.mimikaki.net/download/appcast.xml"
    strategy :sparkle
  end

  conflicts_with cask: "homebrew/cask-versions/mi-beta"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
