cask 'chirp-daily' do
  version '20170324'
  sha256 '344615e83dd5c20a72f503b8b6d8c87cb6d7ba2805957237355aae31d3136f73'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
