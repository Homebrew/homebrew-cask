cask "doxie" do
  version "2.14"
  sha256 "94b01a798705e792ebc932f7a997f8ad18fd8dfe01a9aba7a661b533306e1510"

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
