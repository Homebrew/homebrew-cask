cask 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://www.pupil.io/index.php?p=appcast.rss',
          :sha256 => 'bb44937c4ac1cc66b9f9dd1e4b7a7e98f0495a5d940ee9a8a95b67be98d0e0b8'
  name 'Pupil'
  homepage 'http://pupil.io/'
  license :commercial

  app 'Pupil.app'
end
