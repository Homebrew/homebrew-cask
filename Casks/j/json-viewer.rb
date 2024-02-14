cask "json-viewer" do
  version "1.2.2"
  sha256 "eeb39692b214f3604e7fc344ec7b822c7934897050cc7bbd1bedb7287c259670"

  url "https://jsonviewer.app/JSON-Viewer-#{version}.dmg"
  name "JSON Viewer"
  desc "App to visualise, validate and format JSON datasets"
  homepage "https://jsonviewer.app/"

  livecheck do
    url :homepage
    regex(/JSON[._-]Viewer[._-]v?(\d+(\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "JSON Viewer.app"

  zap trash: [
    "~/Library/Application Scripts/com.pascalgiguere.JSON-Viewer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pascalgiguere.json-viewer.sfl*",
    "~/Library/Containers/com.pascalgiguere.JSON-Viewer",
  ]
end
