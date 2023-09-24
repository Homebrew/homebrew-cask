cask "airtable" do
  version "1.6.4"
  sha256 "70a4ca0c716bd289a2caf32563262e0688dea621fae0df6ede2569784a51ee56"

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
  depends_on macos: ">= :high_sierra"

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
