cask "jami" do
  version "202106011308"
  sha256 "976f090ada38604b5545d05d7d1fcaf87c3979a8aa7e0f144bba313616bb834c"

  url "https://dl.jami.net/mac_osx/jami-#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :page_match
    regex(/jami[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
