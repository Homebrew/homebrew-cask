cask "soqlxplorer" do
  version "4.1"
  sha256 "6a9d57272711ee2bc5e27bb28ea2fa9886a901dff20f6fae6e2126dfd86003c7"

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
