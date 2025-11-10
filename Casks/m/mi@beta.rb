cask "mi@beta" do
  version "3.9"
  sha256 "7e2050bd3c872ef6e4da8342dac5efe9a724f22baac3f84bd197d4c0dfc0a7f7"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi"
  depends_on macos: ">= :big_sur"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
