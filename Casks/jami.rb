cask "jami" do
  version "202102080940"
  sha256 "4757a55f5b3bbd355d8f1ac29ea5be9ee6fef8e25b9d3a92fef8a832cd1510b2"

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
