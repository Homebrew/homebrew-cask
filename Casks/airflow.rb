cask 'airflow' do
  version '2.4.0'
  sha256 '6cdcbd0cb05beec9a6e27d42a239582bc3705458ffc473a4df644e8601f80fac'

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
