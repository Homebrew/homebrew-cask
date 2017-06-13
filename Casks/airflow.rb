cask 'airflow' do
  version '2.0.0-beta3'
  sha256 '8440e6fa315f416342e68b34ea076bfcf071d9ea33f19f19c7434446cf393cfe'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
