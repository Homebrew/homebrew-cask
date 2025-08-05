cask "bookletcreator" do
  version "2.1.0"
  sha256 "689c0497e469335b2440f55877281dec86ce035e3a00fc7035f9f989826fee64"

  url "https://www.bookletcreator.com/files/BookletCreator-#{version}.dmg"
  name "BookletCreator"
  desc "Booklet to PDF utility"
  homepage "https://www.bookletcreator.com/"

  livecheck do
    url "https://www.bookletcreator.com/download/BookletCreatorMac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "BookletCreator.app"

  zap trash: [
    "~/Library/Preferences/com.bookletcreator.BookletCreator.plist",
    "~/Library/Saved Application State/com.bookletcreator.BookletCreator.savedState",
  ]
end
