cask 'airflow' do
  version '2.0.0-beta5'
  sha256 '09f87cd3a93633fe232945053da1d54d55f84a023f9f58ec07a641a5d3a24a1c'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
