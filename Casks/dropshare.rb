cask 'dropshare' do
  version '4.5.6,4570'
  sha256 'c3d617afe69f1d504b5736169e1b51fb9d809f1d6fa01894dc05e49daa91996d'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'b5889ad8b9177006d89508812fbd34cf436af384e6801074b25c71027aff1396'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'

  app "Dropshare #{version.major}.app"

  zap delete: [
                '~/Library/Application Support/Dropshare 4',
                '~/Library/Caches/net.mkswap.Dropshare4',
                '~/Library/Cookies/net.mkswap.Dropshare4.binarycookies',
                '~/Library/Logs/Dropshare 4',
                '~/Library/Preferences/net.mkswap.Dropshare4.plist',
              ]
end
