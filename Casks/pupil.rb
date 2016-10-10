cask 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://www.pupil.io/index.php?p=appcast.rss',
          checkpoint: '22832f1d30f005b38e031625532d8d36f4c650c1e74c7e68a9c2d621f5504f85'
  name 'Pupil'
  homepage 'https://pupil.io/'

  app 'Pupil.app'
end
