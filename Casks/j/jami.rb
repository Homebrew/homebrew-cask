cask "jami" do
  version "2.41,2026072011"
  sha256 "5ecb4257d78b6a955df972624871563e9a78486a4be12989184dcbc9f0796b6a"

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
