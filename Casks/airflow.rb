cask 'airflow' do
  version '2.0.0-beta9'
  sha256 '1b1ecc8b2fd67d24685cb1da1cfd541dc3b33f4c70b23b1ab7cf4f3afa5ae6dc'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  appcast 'https://s3.amazonaws.com/Airflow/Updates/appcast-osx.xml',
          checkpoint: '733bb541641a9fb183331b7133314773b973dde622be918a287ee8fd733e4e41'
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
