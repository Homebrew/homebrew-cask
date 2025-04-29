cask "jami" do
  version "2.34,2025042813"
  sha256 "20100cac6a9f1cf5c02596db564ef315dc817555b2329598a2f6dc35c583a315"

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
