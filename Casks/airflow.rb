cask 'airflow' do
  version '2.1.3'
  sha256 '054d1c61350a9e53216c8b34191eabee81a3271858292fb873f6aaee13bf239d'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: '2bd813fe2919c673f2b7d1a355db80211a821cb9c1d4939e001c3dcd552bb145'
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
