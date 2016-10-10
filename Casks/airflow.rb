cask 'airflow' do
  version '1.0.0-beta7'
  sha256 '2231ab369188a8de83ddf7cda95b89e5198f0d43655b58d0e9f1aa9a0c6169bd'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
