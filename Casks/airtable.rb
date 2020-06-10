cask 'airtable' do
  version '1.4.3'
  sha256 '89fd145989d0c89ac06aed7a2cd8bbdc4dfd81703319dd10e38da4688fa5b0c2'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  appcast 'https://airtable.com/mac'
  name 'Airtable'
  homepage 'https://airtable.com/'

  auto_updates true

  app 'Airtable.app'

  uninstall quit: 'com.FormaGrid.Airtable'

  zap trash: [
               '/Library/Logs/DiagnosticReports/Airtable*.*_resource.diag',
               '~/Library/Logs/Airtable',
               '~/Library/Caches/com.FormaGrid.Airtable*',
               '~/Library/Cookies/com.FormaGrid.Airtable.binarycookies',
               '~/Library/Application Support/Airtable',
               '~/Library/Preferences/com.FormaGrid.Airtable*.plist',
               '~/Library/Preferences/ByHost/com.FormaGrid.Airtable.ShipIt.*.plist',
             ]
end
