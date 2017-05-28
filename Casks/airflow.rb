cask 'airflow' do
  version '2.0.0-beta1'
  sha256 'e3e603d4f7bab4b21b1e32dbb900f09d2089d52bf4bc26f0522e666941727a3f'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
