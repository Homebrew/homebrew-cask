cask 'airflow' do
  version '2.3.9u1'
  sha256 '4562442dc8ed62c93ecb2d61c012fabeb5f8acddbfe0475f4d01b1668645cf85'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.zip"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml'
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
