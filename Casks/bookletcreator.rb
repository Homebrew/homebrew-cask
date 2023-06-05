cask "bookletcreator" do
  version "2.0.5"
  sha256 "f9e702b48d56c41104ddd5c051d5ea77330717113f92396e225ab8983c82d176"

  url "https://www.bookletcreator.com/files/BookletCreator-#{version}.dmg"
  name "BookletCreator"
  desc "Booklet to PDF utility"
  homepage "https://www.bookletcreator.com/"

  livecheck do
    url "https://www.bookletcreator.com/update/bc-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "BookletCreator.app"

  zap trash: [
    "~/Library/Preferences/com.bookletcreator.BookletCreator.plist",
    "~/Library/Saved Application State/com.bookletcreator.BookletCreator.savedState",
  ]
end
