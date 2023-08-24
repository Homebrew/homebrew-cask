cask "json-viewer" do
  version "1.2.2"
  sha256 "eeb39692b214f3604e7fc344ec7b822c7934897050cc7bbd1bedb7287c259670"

  url "https://jsonviewer.app/JSON-Viewer-#{version}.dmg"
  name "json-viewer"
  desc "App to visualize, validate and format JSON datasets"
  homepage "https://jsonviewer.app/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/JSON-Viewer-(\d+(\.\d+)+)\.dmg/i)
      next if match.blank?

      (match[1]).to_s
    end
  end

  app "JSON Viewer.app"

  zap trash: [
    "~/Library/Application Scripts/com.pascalgiguere.JSON-Viewer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pascalgiguere.json-viewer.sfl2",
    "~/Library/Containers/com.pascalgiguere.JSON-Viewer",
  ]
end
