cask "bibletime" do
  version "3.0.3"
  sha256 "745d2277b24441e0b9ba854f251baabcfee62fa7a1e1484efd92f2f48c535293"

  url "https://github.com/bibletime/bibletime/releases/download/v#{version}/BibleTime-#{version}.dmg", verified: "github.com/bibletime/bibletime"
  name "bibletime"
  desc "BibleTime is a Bible study application based on the Sword library and Qt toolkit."
  homepage "https://bibletime.info/"

  app "BibleTime.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
