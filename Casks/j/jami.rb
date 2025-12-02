cask "jami" do
  version "2.37,2025120208"
  sha256 "68b5d92cff0ca891d83c1690598133ac741c5705951b8ab2be64e559718b47e6"

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
