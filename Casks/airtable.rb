cask 'airtable' do
  version '1.4.2'
  sha256 '30c655211eef7d706734f49f79209d693b6a22b62e1ec4ca028acd2ffb04e81b'

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
