cask 'airflow' do
  version '2.1.0'
  sha256 'e0788cad97dc74cc35366ab2070b9605de9d0fd190be779625340342ca12108d'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: 'dd12776f0c8ecd80c3adeb55ed4c3f72eef95dfccaa266a5a49ebe0f937cf26d'
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
