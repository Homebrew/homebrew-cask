cask 'chirp' do
  version '20200603'
  sha256 '30fefb6b520f08fbbcfac7a0d43bf8b0c108f60542e843affafaac8a62fa8694'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app 'CHIRP.app'
end
