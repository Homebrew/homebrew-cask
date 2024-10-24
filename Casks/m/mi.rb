cask "mi" do
  version "3.8.3"
  sha256 "fa8e32c45dcc3d636e15ef5615c2ba9dd7a05e9d1fb6e7cc73f9416019f502e8"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/"

  livecheck do
    url "https://www.mimikaki.net/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi@beta"
  depends_on macos: ">= :high_sierra"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
