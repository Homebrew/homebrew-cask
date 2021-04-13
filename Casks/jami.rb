cask "jami" do
  version "202103051411"
  sha256 "5a46cbfdae29b9818521710778734e8daeb50c8b2ff0805d2f536eb3de561c89"

  url "https://dl.jami.net/mac_osx/jami-#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :page_match
    regex(/jami-(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
