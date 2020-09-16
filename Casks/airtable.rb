cask "airtable" do
  version "1.4.4"
  sha256 "0acee1683f4b8a444661803bea61d305d4c0f0f71668fc730ff4e2d33c296795"

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  appcast "https://airtable.com/mac"
  name "Airtable"
  homepage "https://airtable.com/"

  auto_updates true

  app "Airtable.app"

  uninstall quit: "com.FormaGrid.Airtable"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Airtable*.*_resource.diag",
    "~/Library/Logs/Airtable",
    "~/Library/Caches/com.FormaGrid.Airtable*",
    "~/Library/Cookies/com.FormaGrid.Airtable.binarycookies",
    "~/Library/Application Support/Airtable",
    "~/Library/Preferences/com.FormaGrid.Airtable*.plist",
    "~/Library/Preferences/ByHost/com.FormaGrid.Airtable.ShipIt.*.plist",
  ]
end
