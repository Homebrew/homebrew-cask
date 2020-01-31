cask 'airtable' do
  version '1.4.2'
  sha256 '4bf7a0d9f78bbe95e7202ce3d9a50cb7826f77b9dacfd69bc27845a0c3b08698'

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
