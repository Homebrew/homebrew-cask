cask 'chirp-daily' do
  version '20170126'
  sha256 '7fc48fa3752f828120b94a21c1df1612dbd285904bcff6886d0b843604cfcf31'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
