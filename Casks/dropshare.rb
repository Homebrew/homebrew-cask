cask 'dropshare' do
  version '4-4217'
  sha256 '53220d5594eb007d52232bcae4b2e3eead06c8cf16d6e8dd009a647d40936152'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '6d88c460423ed3615a00b5c5761626265fe544b8b37635ffaf052340c712cea0'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
