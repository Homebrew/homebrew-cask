cask 'airflow' do
  version '2.0.0-beta8u2'
  sha256 '22c5de5b36147e222932f92bed1daa6768c719022f05d7bd484c83a4842aef84'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: 'c79058d162ded8201cdbe8f80acacf3c03c1aae4c5d0b3deacf5b642f1bd379c'
  name 'Airflow'
  homepage 'https://airflowapp.com/'

  app 'Airflow.app'

  zap delete: [
                '~/Library/Caches/com.bitcavehq.Airflow',
                '~/Library/Saved Application State/com.bitcavehq.Airflow.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Airflow',
                '~/Library/Preferences/com.bitcavehq.Airflow.plist',
              ]
end
