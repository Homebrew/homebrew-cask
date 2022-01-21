cask "airtable" do
  version "1.4.5"
  sha256 "c4078c92678b41dbbd7cd79af10280eb2f89a8c4ff22f6edbf554d8c080c186a"

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name "Airtable"
  desc "Spreadsheet-database hybrid cloud collaboration"
  homepage "https://airtable.com/"

  livecheck do
    url "https://airtable.com/mac"
    regex(%r{href=.*?/Airtable-(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "Airtable.app"

  uninstall quit:   "com.FormaGrid.Airtable",
            delete: "/Library/Logs/DiagnosticReports/Airtable*.*_resource.diag"

  zap trash: [
    "~/Library/Application Support/Airtable",
    "~/Library/Caches/com.FormaGrid.Airtable*",
    "~/Library/Cookies/com.FormaGrid.Airtable.binarycookies",
    "~/Library/Logs/Airtable",
    "~/Library/Preferences/ByHost/com.FormaGrid.Airtable.ShipIt.*.plist",
    "~/Library/Preferences/com.FormaGrid.Airtable*.plist",
  ]
end
