cask "soqlxplorer" do
  version "3.5"
  sha256 "e699d0ac80936f0701c82988f350986db5d9892b8e4e2c92d4fe5b7395476d5d"

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
