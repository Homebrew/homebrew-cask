cask "airtable" do
  version "1.7.1"
  sha256 "590a50f422f4f053861bdf55d83ba0d664b657b19f43f4b77da0f9e561512825"

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
  depends_on macos: :monterey

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
