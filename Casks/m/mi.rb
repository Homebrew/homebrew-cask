cask "mi" do
  version "3.9.4"
  sha256 "7d50bf943c8ab081be8fb2b7143ca4287d3470aaa35cc7fe3c20941905ce1910"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/"

  livecheck do
    url "https://www.mimikaki.net/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi@beta"
  depends_on macos: :big_sur

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
