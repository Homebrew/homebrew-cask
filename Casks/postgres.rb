cask 'postgres' do
  version '2.0.2'
  sha256 '16f962979a12529416ac18ae20a8130397e9d099d1846e83d8e463b716c99148'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '00a7677b5ac292d1833dde2dcaf89f8c791d56546f6ea077ac3f8fcc44fd0e2d'
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
