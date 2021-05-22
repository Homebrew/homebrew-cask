cask "jami" do
  version "202105171555"
  sha256 "5583a83aad953dbb04932bbff8369273332f586a52dede16ab39cd303ab85a80"

  url "https://dl.jami.net/mac_osx/jami-#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :page_match
    regex(/jami-(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
