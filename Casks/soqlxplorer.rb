cask "soqlxplorer" do
  version "3.3"
  sha256 "df52a4749a712c7f527af3f87dcd88c8e08ff25714c666070c09f78f68ca36a3"

  url "https://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  appcast "https://www.pocketsoap.com/osx/soqlx/appcast.xml"
  name "SoqlXplorer"
  homepage "https://www.pocketsoap.com/osx/soqlx/"

  depends_on macos: ">= :high_sierra"

  app "SoqlXplorer.app"

  zap trash: [
    "~/Library/Caches/com.pocketsoap.osx.SoqlXplorer",
    "~/Library/Preferences/com.pocketsoap.osx.SoqlXplorer.plist",
  ]
end
