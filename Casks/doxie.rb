cask "doxie" do
  version "3.0"
  sha256 "dc8fd2a733668b08761d28e91e713eff74c629edcbe2057fcbc6c4ac1c41ff37"

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
