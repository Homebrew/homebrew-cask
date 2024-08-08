cask "mi" do
  version "3.8.1"
  sha256 "eacce02dca56f2a59f43cb5e5ed289189c4f8c19d318885b5e04902108232175"

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
