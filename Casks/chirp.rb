cask 'chirp' do
  version '20200711'
  sha256 'e93d0f8d538a1e18daa6ea610b5efd06d8cf0c6910a9abf314f1e5670b6c06c5'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app 'CHIRP.app'
end
