cask "doxie" do
  version "3.1"
  sha256 "e0d53143ed018d101a2a5797398c1be3d6533b77b38580d0bacff4d01a6f47f1"

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
