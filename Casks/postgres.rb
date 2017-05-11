cask 'postgres' do
  version '2.0.2'
  sha256 '16f962979a12529416ac18ae20a8130397e9d099d1846e83d8e463b716c99148'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '69e7c2904c06dd4ef2f4467aef988ea6c6852f82279a0a4851fdb67f77d66c25'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true

  app 'Postgres.app'

  zap delete: [
                '~/Library/Application Support/Postgres',
                "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
                "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
                "~/Library/LaunchAgents/com.postgresapp.Postgres#{version.major}LoginHelper.plist",
                "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
              ]
end
