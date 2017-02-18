cask 'chirp-daily' do
  version '20170212'
  sha256 '6560f4c33691591d5b6064acb2b2b1fd46f2ec28fb4dd5c306f737500dc8548b'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
