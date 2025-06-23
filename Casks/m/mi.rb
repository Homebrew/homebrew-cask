cask "mi" do
  version "3.8.9"
  sha256 "b54b516782ee37699dd63dd131b6f8cd444fc5184c4762f646e4501caf285ce3"

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
