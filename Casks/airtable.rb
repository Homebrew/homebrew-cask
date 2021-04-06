cask "airtable" do
  version "1.4.5"
  sha256 "c4078c92678b41dbbd7cd79af10280eb2f89a8c4ff22f6edbf554d8c080c186a"

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name "Airtable"
  desc "Spreadsheet-database hybrid cloud collaboration"
  homepage "https://airtable.com/"

  livecheck do
    url "https://airtable.com/mac"
    strategy :page_match
    regex(%r{href=.*?/Airtable-(\d+(?:\.\d+)*)\.dmg}i)
  end

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
