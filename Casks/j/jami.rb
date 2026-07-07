cask "jami" do
  version "2.40,2026070716"
  sha256 "1c13910477756aa53b000bfc27856491090b2b5a497e0abdab39a0a30488a84a"

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
  depends_on macos: :ventura

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
