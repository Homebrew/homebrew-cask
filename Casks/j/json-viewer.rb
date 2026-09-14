cask "json-viewer" do
  version "2.0.0"
  sha256 "0c642692c6a9aebc1b750a00302c93a3508c1000f21d0be56f621f380c16d506"

  url "https://jsonviewer.app/releases/JSON-Viewer-#{version}.dmg"
  name "JSON Viewer"
  desc "App to visualise, validate and format JSON datasets"
  homepage "https://jsonviewer.app/"

  livecheck do
    url :homepage
    regex(/JSON[._-]Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :tahoe

  app "JSON Viewer.app"

  zap trash: [
    "~/Library/Application Scripts/com.pascalgiguere.JSON-Viewer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pascalgiguere.json-viewer.sfl*",
    "~/Library/Containers/com.pascalgiguere.JSON-Viewer",
  ]
end
