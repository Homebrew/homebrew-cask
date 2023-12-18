cask "bookends" do
  version "14.2.7"
  sha256 :no_check

  url "https://www.sonnysoftware.com/bookends-for-mac/downloads/Bookends.dmg"
  name "Bookends"
  desc "Reference management and bibliography software"
  homepage "https://www.sonnysoftware.com/bookends-for-mac"

  livecheck do
    url :homepage
    regex(/appversion\s=\s"\sin\sv\.\s(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Bookends.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Word/Bookends.scpt",
    "~/Library/Application Support/Bookends",
    "~/Library/Caches/com.sonnysoftware.bookends2",
    "~/Library/Group Containers/UBF8T346G9.Office/User Content.localized/Startup.localized/Word/Bookends.dotm",
    "~/Library/HTTPStorages/com.sonnysoftware.bookends2",
    "~/Library/PDF Services/Save PDF to Bookends",
    "~/Library/Saved Application State/com.sonnysoftware.bookends2.savedState",
  ]
end
