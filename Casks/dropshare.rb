cask 'dropshare' do
  version '4-4218'
  sha256 'b2d4e2f1c77a3f654049cdcfba2a73234185c0a26f5e4b99fb153f7f2c040658'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: 'f1436d99e24ee365b5045524e77eb2bdac6f4ce687ae099b1427e8f7e2ef027f'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
