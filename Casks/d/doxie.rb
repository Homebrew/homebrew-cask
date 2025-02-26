cask "doxie" do
  version "3.5"
  sha256 "ac8a82d7332c7c516427c453f576dbc09a7af5ea95eff8f693e3036589af3c58"

  url "https://download.getdoxie.com/Doxie-#{version}.dmg"
  name "Doxie"
  desc "Companion app for scanner hardware"
  homepage "https://www.getdoxie.com/"

  livecheck do
    url "https://r.getdoxie.com/app/download_mac/"
    strategy :header_match
  end

  app "Doxie.app"

  zap trash: [
    "~/Library/Caches/com.getdoxie.doxie",
    "~/Library/Preferences/com.getdoxie.doxie.plist",
    "~/Library/Saved Application State/com.getdoxie.doxie.savedState",
  ]
end
