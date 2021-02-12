cask "mi" do
  version "3.5.1,975"
  sha256 "277cccdf47aafe9d1d4d3b65289861e47cc60269c4a280fcde9e428b7009ba5e"

  url "https://www.mimikaki.net/download/mi#{version.before_comma}.dmg"
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
