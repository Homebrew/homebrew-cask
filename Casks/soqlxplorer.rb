cask "soqlxplorer" do
  version "3.4"
  sha256 "ebecf0fa59156522c9fb26c1f7f7c56a7e8669e146cd05ee95387f4a80712e69"

  url "https://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  name "SoqlXplorer"
  desc "Desktop client for Salesforce.com platform"
  homepage "https://www.pocketsoap.com/osx/soqlx/"

  livecheck do
    url "https://www.pocketsoap.com/osx/soqlx/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "SoqlXplorer.app"

  zap trash: [
    "~/Library/Caches/com.pocketsoap.osx.SoqlXplorer",
    "~/Library/Preferences/com.pocketsoap.osx.SoqlXplorer.plist",
  ]
end
