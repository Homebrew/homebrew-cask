cask 'airflow' do
  version '3.1.2'
  sha256 'f0dfcafd0ef4c0775865d2c8e0534cdb2eecad1a9fd1fdcc79cce252c3adfcd1'

  # cdn.downloads.iocave.net/Airflow/ was verified as official when first introduced to the cask
  url "https://cdn.downloads.iocave.net/Airflow/Airflow%20#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://airflowapp.com/download/latest?mac'
  name 'Airflow'
  homepage 'https://airflowapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Airflow.app'

  zap trash: [
               '~/Library/Application Support/Airflow',
               '~/Library/Caches/com.bitcavehq.Airflow',
               '~/Library/Preferences/com.bitcavehq.Airflow.plist',
               '~/Library/Saved Application State/com.bitcavehq.Airflow.savedState',
             ]
end
