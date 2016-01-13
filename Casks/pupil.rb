cask 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://www.pupil.io/index.php?p=appcast.rss',
          :checkpoint => '5e8b8c434b6113e059355dcbf8965a5d52d1765fdbab898338a328360f1e624a'
  name 'Pupil'
  homepage 'https://pupil.io/'
  license :commercial

  app 'Pupil.app'
end
