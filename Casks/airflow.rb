cask 'airflow' do
  version '2.3.7'
  sha256 '67d1bd9c08031f321512c2ad41980abf296803d29c3a097bf9674e9a3112033c'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.zip"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: '012c22c7bce1061485202a328111f2e7cb51188b90d009ccab884e5dcc8aa61c'
  name 'Airflow'
  homepage 'https://airflowapp.com/'

  auto_updates true

  app 'Airflow.app'

  zap trash: [
               '~/Library/Application Support/Airflow',
               '~/Library/Caches/com.bitcavehq.Airflow',
               '~/Library/Preferences/com.bitcavehq.Airflow.plist',
               '~/Library/Saved Application State/com.bitcavehq.Airflow.savedState',
             ]
end
