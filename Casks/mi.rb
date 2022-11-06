cask "mi" do
  version "3.7,1190"
  sha256 "a58c547ab1a3c855b532f0971dd3a10f89ac4d0762dbc2745338562f40294f0d"

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
