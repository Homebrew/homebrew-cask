cask 'chirp-daily' do
  version '20170406'
  sha256 '8db6d9f0ec76a42c77ae2fba8d819d389ce5a187e38b2a741f7f767e3977c629'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
