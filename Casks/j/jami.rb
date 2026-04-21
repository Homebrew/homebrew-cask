cask "jami" do
  version "2.39,2026042111"
  sha256 "1b85175350e80a33cbaffab5ca773eb9541c67d0dd904a8a7bb17eb48b4cb790"

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
  depends_on macos: ">= :ventura"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
