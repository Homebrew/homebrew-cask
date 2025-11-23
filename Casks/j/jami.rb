cask "jami" do
  version "2.37,2025112213"
  sha256 "8f3ca0d83a7812da29c71032497df602afa53a12f6e5e18555b3a204983c8d9c"

  url "https://dl.jami.net/mac_osx/jami#{version.csv.second}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
