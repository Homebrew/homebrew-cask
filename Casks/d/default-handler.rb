cask "default-handler" do
  version "1.1.1,8"
  sha256 "f35f3a171f99adf337d7be762ba4627186c26519c17683ddf15776a151c17602"

  url "https://updates.edovia.com/com.edovia.Default-Handler/DefaultHandler_#{version.csv.first}b#{version.csv.second}.zip"
  name "Default Handler"
  desc "Utility for changing default URL scheme handlers"
  homepage "https://blog.edovia.com/2024/03/14/introducing-default-handler/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.Default-Handler/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Default Handler.app"

  zap trash: [
    "~/Library/Application Support/com.edovia.Default-Handler",
    "~/Library/Caches/com.edovia.Default-Handler",
    "~/Library/HTTPStorages/com.edovia.Default-Handler",
    "~/Library/Preferences/com.edovia.Default-Handler.plist",
    "~/Library/Saved Application State/com.edovia.Default-Handler.savedState",
  ]
end
