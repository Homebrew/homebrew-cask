cask 'airflow' do
  version '2.0.0-beta8u2'
  sha256 '22c5de5b36147e222932f92bed1daa6768c719022f05d7bd484c83a4842aef84'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'

  app 'Airflow.app'
end
