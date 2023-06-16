cask "airtable" do
  version "1.6.1"
  sha256 "1f3f2242e8e13f886343331c7e3c4a2aa3593a00cc5fc9a9db9c1e738f392794"

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name "Airtable"
  desc "Spreadsheet-database hybrid cloud collaboration"
  homepage "https://airtable.com/"

  livecheck do
    url "https://airtable.com/desktopAppLatestVersion?version=0.0.0&platform=darwin"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Airtable.app"

  uninstall quit:   "com.FormaGrid.Airtable",
            delete: "/Library/Logs/DiagnosticReports/Airtable*.*_resource.diag"

  zap trash: [
    "~/Library/Application Support/Airtable",
    "~/Library/Caches/com.FormaGrid.Airtable*",
    "~/Library/Cookies/com.FormaGrid.Airtable.binarycookies",
    "~/Library/HTTPStorages/com.FormaGrid.Airtable*",
    "~/Library/Logs/Airtable",
    "~/Library/Preferences/ByHost/com.FormaGrid.Airtable.ShipIt.*.plist",
    "~/Library/Preferences/com.FormaGrid.Airtable*.plist",
    "~/Library/Saved Application State/com.FormaGrid.Airtable.savedState",
  ]
end
