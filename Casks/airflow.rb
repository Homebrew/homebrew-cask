cask 'airflow' do
  version '2.3.12'
  sha256 'bfcd3f0e11afc35adc1910324adc28289769127c41ae32032d75449bcde0b844'

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
