cask 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://pupil.io/appcast.rss',
          checkpoint: '12aa912ebb2b2642e39423c402b638e50cc0538fb1c34fb502897c0e91372de2'
  name 'Pupil'
  homepage 'http://pupil.io/'

  app 'Pupil.app'
end
