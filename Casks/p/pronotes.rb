cask "pronotes" do
  version "0.7.8.2"
  sha256 "c4f8ff1beae55203453e3c674cfb161828f91223a10d23e3891916646331de59"

  url "https://assets.pronotes.app/downloads/ProNotes-#{version}.zip"
  name "ProNotes"
  desc "Apple Notes extension"
  homepage "https://www.pronotes.app/"

  livecheck do
    url "https://www.pronotes.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ProNotes.app"

  zap trash: [
    "~/Library/Caches/com.dexterleng.ProNotes",
    "~/Library/Preferences/com.dexterleng.ProNotes.plist",
    "~/Library/Saved Application State/com.dexterleng.ProNotes.savedState",
    "~/Library/WebKit/com.dexterleng.ProNotes",
  ]
end
