cask "profind" do
  version "1.11.0,11102"
  sha256 "96d51576339a1588e6461d60ca0ad06249d9f774b7a154e4e63db7cc98c2b30e"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.csv.first.no_dots}.dmg"
  name "ProFind"
  desc "File search app"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"

  zap trash: [
    "~/Library/Application Scripts/com.zeroonetwenty.ProFind",
    "~/Library/Application Support/com.zeroonetwenty.ProFind",
    "~/Library/Caches/com.zeroonetwenty.ProFind",
    "~/Library/Preferences/com.zeroonetwenty.ProFind.plist",
    "~/Library/Saved Application State/com.zeroonetwenty.ProFind.savedState",
  ]
end
