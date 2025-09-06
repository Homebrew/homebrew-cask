cask "jami" do
  version "2.36,2025090615"
  sha256 "2077fb41a8ff8d6434c4ac3332864df53348d9dd4a34f231bb5cc21bcae1c9cb"

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
