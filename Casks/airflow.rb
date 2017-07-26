cask 'airflow' do
  version '2.0.0-beta7'
  sha256 'e681a1ab47bcb0ff5800e8d5d6ae59b9e93ccb764a6d56d024c30c48db04cd23'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
