cask "jami" do
  version "2.34,2025030510"
  sha256 "3840057a5be2f756f57d0d8213092705ee6989affd85d761986fe0180afccb11"

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
  depends_on macos: ">= :big_sur"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
