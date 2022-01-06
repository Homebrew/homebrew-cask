cask "amadine" do
  version "1.2.7,158"
  sha256 :no_check

  url "https://belightsoft.s3.amazonaws.com/Amadine.dmg",
      verified: "belightsoft.s3.amazonaws.com/"
  name "Amadine"
  desc "Vector graphic and illustration software"
  homepage "https://amadine.com/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_Amadine.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Amadine.app"

  zap trash: [
    "~/Library/Application Support/Amadine",
    "~/Library/Caches/com.belightsoft.Amadine",
    "~/Library/Preferences/com.belightsoft.Amadine.plist",
    "~/Library/Saved Application State/com.belightsoft.Amadine.savedState",
  ]
end
