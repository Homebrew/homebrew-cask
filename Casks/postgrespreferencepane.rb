cask 'postgrespreferencepane' do
  version '2.4.2'
  sha256 'fb3f618321efec12cbad21ec2d77e6a024a35f7a17bb304b421970f85e38337f'

  url "https://github.com/MaccaTech/PostgresPrefs/releases/download/v#{version}/PostgreSQL.prefPane-v#{version}.zip"
  appcast 'https://github.com/MaccaTech/PostgresPrefs/releases.atom',
          checkpoint: 'a5ba55f0a2e26224f6be01404ef8eb4546e57cfcf79c3af3f6b775d46547d9ed'
  name 'PostgresPrefs'
  homepage 'https://github.com/MaccaTech/PostgresPrefs'

  prefpane 'PostgreSQL.prefPane'
end
