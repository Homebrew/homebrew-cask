cask "jami" do
  version "2.38,2026012513"
  sha256 "2a2bccc0fc5824cfefe4fdfd599275b3c9010930ef79ad21bd2d9fae8349660c"

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
