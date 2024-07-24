cask "mi@beta" do
  version "3.8b4"
  sha256 "e5c491299e768c6ec3a85904a655fed83e50ffb22d2df977f9304d07fe28a620"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi"
  depends_on macos: ">= :high_sierra"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
