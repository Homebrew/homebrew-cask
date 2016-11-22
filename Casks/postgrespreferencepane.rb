cask 'postgrespreferencepane' do
  version '2.4.2'
  sha256 'fb3f618321efec12cbad21ec2d77e6a024a35f7a17bb304b421970f85e38337f'

  url "https://github.com/MaccaTech/PostgresPrefs/releases/download/v#{version}/PostgreSQL.prefPane-v#{version}.zip"
  appcast 'https://github.com/MaccaTech/PostgresPrefs/releases.atom',
          checkpoint: 'ebffbab28a2d9c2eb3c493c02128d0a2162f3c16864e9d015aa7ec073e5ca627'
  name 'PostgresPrefs'
  homepage 'https://github.com/MaccaTech/PostgresPrefs'

  prefpane 'PostgreSQL.prefPane'
end
