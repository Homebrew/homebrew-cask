cask 'cappuccino' do
  version '3.0,275'
  sha256 '9b91bfd49717de41ab0e24492f2379d99f65c0c30ec5563b8af2c0f0640d9393'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/902c8f3a570242808ebb00495f5fa04d/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050'
  name 'Cappuccino'
  homepage 'http://cappuccinoapp.com/'

  app 'CappuccinoBeta.app'

  zap delete: [
                '~/Library/Application Scripts/it.nebula.cappuccino.beta',
                '~/Library/Application Support/CrashReporter/Cappuccino*',
                '~/Library/Containers/it.nebula.cappuccino.beta',
                '~/Library/Logs/DiagnosticReports/Cappuccino*',
                '~/Library/Saved Application State/it.nebula.cappuccino.savedState',
                '~/Library/SyncedPreferences/it.nebula.cappuccino.plist',
              ]
end
