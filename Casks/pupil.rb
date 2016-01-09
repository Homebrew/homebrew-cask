cask 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://pupil.io/appcast.rss',
          :sha256 => 'appcast is probbly incorrect, as non-200 (OK) HTTP response code was returned (301)'
  name 'Pupil'
  homepage 'http://pupil.io/'
  license :commercial

  app 'Pupil.app'
end
