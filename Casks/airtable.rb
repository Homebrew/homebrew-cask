cask 'airtable' do
  version '1.4.1'
  sha256 '7056cbbc5cc1848ac42eff09adb5491f297c9c3ec89abbd122b55c56f003f4af'

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
