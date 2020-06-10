cask 'chirp' do
  version '20200521'
  sha256 'f5115b5bffd3a2c931a4bd8ce45d62def44e2000899ba8738e8591d38557b8f9'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app 'CHIRP.app'
end
