cask 'airtable' do
  version '1.3.2'
  sha256 '839466d30355952114a63a409e4e98796285a0be71b81458bd259ace1ba273c8'

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
