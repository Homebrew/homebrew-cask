cask :v1 => 'pupil' do
  version '1.2.2'
  sha256 'd3b4703ce2f8461f1f23a27c777aabde2412aaf7d996f73781263c5cd3afb5e3'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://pupil.io/appcast.rss',
          :sha256 => 'f3fba366207956fb47f2a2b20f5587db6a70d461deb7826cdfe0230e8651c226'
  name 'Pupil'
  homepage 'http://pupil.io/'
  license :commercial

  app 'Pupil.app'
end
