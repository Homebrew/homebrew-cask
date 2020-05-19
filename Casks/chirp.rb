cask 'chirp' do
  version '20200516'
  sha256 '7dfab75731dab76635c33b643f62f54bbd2861a19cbf9f19e19a4d4b91c80ea2'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app 'CHIRP.app'
end
