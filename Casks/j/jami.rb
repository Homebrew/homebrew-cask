cask "jami" do
  version "2.34,2025032120"
  sha256 "41dcf099ab3165ee162e0f2293088cd88eca611d0931001a7554d92fed8ee1cb"

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
