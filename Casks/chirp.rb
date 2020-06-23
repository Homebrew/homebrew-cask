cask 'chirp' do
  version '20200622'
  sha256 '55e5dc8319e5cb57dda88dda5488757878f338c80c8bedf4a2e78b0ef5701132'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app 'CHIRP.app'
end
