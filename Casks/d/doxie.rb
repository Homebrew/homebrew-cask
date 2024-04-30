cask "doxie" do
  version "3.3"
  sha256 "28f98bc938aa0e4ab281df0dcb561d45f3bdadaf51255399e63fc635723a0516"

  url "https://download.getdoxie.com/Doxie-#{version}.dmg"
  name "Doxie"
  desc "Companion app for scanner hardware"
  homepage "https://www.getdoxie.com/"

  livecheck do
    url "https://r.getdoxie.com/app/doxie/release-notes-latest.html"
    regex(/Doxie.(\d+(?:\.\d+)+)/i)
  end

  app "Doxie.app"

  zap trash: [
    "~/Library/Caches/com.getdoxie.doxie",
    "~/Library/Preferences/com.getdoxie.doxie.plist",
    "~/Library/Saved Application State/com.getdoxie.doxie.savedState",
  ]
end
