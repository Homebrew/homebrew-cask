cask :v1 => 'pupil' do
  version '1.1'
  sha256 'd30e0cf8b45ab0a7ccd4ae9e99a788bb810ccf18c856ab446fc6d230d1159a03'

  url "http://pupil.io/downloads/#{version}/Pupil.app.zip"
  appcast 'http://pupil.io/appcast.rss',
          :sha256 => 'f3fba366207956fb47f2a2b20f5587db6a70d461deb7826cdfe0230e8651c226'
  homepage 'http://pupil.io/'
  license :unknown

  app 'Pupil.app'
end
