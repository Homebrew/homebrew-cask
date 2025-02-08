cask "mi" do
  version "3.8.6"
  sha256 "0d088aea998c74ac59be4e1ace7439161aeeffd363608379d8ad9e286db7b87c"

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
