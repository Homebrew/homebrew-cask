cask 'airflow' do
  version '2.2.0'
  sha256 '19877d9483abe7f8c843cba474d6f3da1e853e5526592fc7f850d49d8b3b6854'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: '426092153bedb33ba0c3c8cc81ede2e32c6cf4463f94dc51f052dbfbecf87ae8'
  name 'Airflow'
  homepage 'https://airflowapp.com/'

  app 'Airflow.app'

  zap trash: [
               '~/Library/Application Support/Airflow',
               '~/Library/Caches/com.bitcavehq.Airflow',
               '~/Library/Preferences/com.bitcavehq.Airflow.plist',
               '~/Library/Saved Application State/com.bitcavehq.Airflow.savedState',
             ]
end
