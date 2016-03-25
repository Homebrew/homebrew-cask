cask 'airflow' do
  version '1.0.0-beta6'
  sha256 'fc97c76c90232ed1a5f18134a4f4d5be1da622ea9c823b5f5290204269f077fa'

  # amazonaws.com/Airflow was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Airflow/Download/Airflow%20#{version}.dmg"
  name 'Airflow'
  homepage 'http://airflowapp.com/'
  license :gratis

  app 'Airflow.app'
end
