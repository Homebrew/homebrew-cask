cask 'airflow' do
  version '2.0.0-beta4'
  sha256 'c0e0fb3aa79e8aafba6b5371a7968115e36e828c048e43ec56ea795a20bce85d'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
