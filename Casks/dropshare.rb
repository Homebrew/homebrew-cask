cask 'dropshare' do
  version '4-4113'
  sha256 'c97f7819f3992c657d3421ac29326e076466a0051f12bbbefb1561bb8155d3d9'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '7bbceca9c49845a879a5e5860292250508eb7e47f0a8c9413eca254a89dab563'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
