cask "opentx-companion" do
  version "2.3.11"
  sha256 "67e087f19bf74ef07a1fd28d0f68b8a7bbf00fce44ff76bb65dfbd0a0b10af7d"

  url "https://downloads.open-tx.org/#{version.major_minor}/release/companion/macosx/opentx-companion-#{version}.dmg"
  name "OpenTX Companion"
  desc "Utility for RC radio transmitters running on OpenTX firmware"
  homepage "https://www.open-tx.org/"

  livecheck do
    url "https://www.open-tx.org/downloads"
    strategy :page_match
    regex(/opentx\s(\d+(?:\.\d+)*)/i)
  end

  app "OpenTX Companion #{version.major_minor}.app"

  zap trash: [
    "~/Library/Preferences/org.opentx.companion.plist",
    "~/Library/Preferences/com.opentx.Companion #{version.major_minor}.plist",
    "~/Library/Saved Application State/org.opentx.companion.savedState",
  ]
end
