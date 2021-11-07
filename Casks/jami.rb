cask "jami" do
  version "202110012216"
  sha256 "8d270bb64d5d54933bded2428982e5b65e540aed1e865db1fa659ba521ae0dc3"

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
