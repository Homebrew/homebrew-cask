cask 'airflow' do
  version '3.1.0u2'
  sha256 'f3561b006b772c42709384c73b7d29311de09deb2e601f6b5fa1138a51e6a266'

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
