cask 'airflow' do
  version '2.4.3'
  sha256 '5e34b3fca2960262bd3d3656a15e6099861dc74da50895f99ced3e3d85782c9d'

  # cdn.downloads.iocave.net/Airflow was verified as official when first introduced to the cask
  url "https://cdn.downloads.iocave.net/Airflow/Airflow%20#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://airflowapp.com/download/latest?mac'
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
