cask "soqlxplorer" do
  version "4.6"
  sha256 "49e55f93a56a6e0cbe17164f73b8e7ad08539e0488864c4730916b820efb7ec7"

  url "https://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  name "SoqlXplorer"
  desc "Desktop client for Salesforce.com platform"
  homepage "https://www.pocketsoap.com/osx/soqlx/"

  livecheck do
    url "https://www.pocketsoap.com/osx/soqlx/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SoqlXplorer.app"

  zap trash: [
    "~/Library/Caches/com.pocketsoap.osx.SoqlXplorer",
    "~/Library/Preferences/com.pocketsoap.osx.SoqlXplorer.plist",
  ]
end
