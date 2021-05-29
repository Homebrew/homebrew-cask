cask "jami" do
  version "202105272138"
  sha256 "cdb1d19abfed3213b7aa282bd489535752240041ff3b05dc032fab0f099eb8a7"

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
