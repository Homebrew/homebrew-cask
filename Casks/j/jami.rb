cask "jami" do
  version "2.38,2026012908"
  sha256 "4d30cd7ba6c76aab4d1420ef818f2a2ee83eb61e115503fb7d048bc69eaed237"

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
