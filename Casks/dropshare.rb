cask 'dropshare' do
  version '4-4222'
  sha256 '7bf2443a68eda4f31b531bdfee1ad5dc1641ab99ad2c049bf4fe1164249bb63e'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '407cbcd46b2edac456dc5331d57346f2424923bd46c66b2026e5d80e752bdd2f'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
