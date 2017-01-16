cask 'postgres' do
  version '2.0.1'
  sha256 'bc8e40df78eab5fcc95eb749c79f03310d32a34d681b049507157d66872ce4ed'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '658a38a0aa9191a6918c922042d8e05f3b37eb78f83df7e2082bbd09092644a0'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true

  app 'Postgres.app'

  zap delete: [
                '~/Library/Application Support/Postgres',
                '~/Library/Preferences/com.postgresapp.Postgres2.plist',
              ]
end
