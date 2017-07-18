cask 'airflow' do
  version '2.0.0-beta6'
  sha256 '13ea1d24e43be6b49cfeccf3075743ed55cbaf2656d4891067797cc569573e80'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
