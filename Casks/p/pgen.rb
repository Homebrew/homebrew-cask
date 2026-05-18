cask "pgen" do
  version "1.7.0"
  sha256 "dea091bc5cdebabbea8d37daa7b8adabf57e0eef5a825d926fe63d3ae438b4b3"

  url "https://pgendb.com/download/v#{version}/pgen.dmg"
  name "pgen"
  desc "Modern, AI-powered PostgreSQL desktop client"
  homepage "https://pgendb.com/"

  livecheck do
    url "https://pgendb.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "pgen.app"

  zap trash: [
    "~/Library/Application Support/com.tragen.pgendb",
    "~/Library/Caches/com.tragen.pgendb",
    "~/Library/HTTPStorages/com.tragen.pgendb",
    "~/Library/Preferences/com.tragen.pgendb.plist",
    "~/Library/Saved Application State/com.tragen.pgendb.savedState",
  ]
end
