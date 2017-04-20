cask 'dropshare' do
  version '4.6.2,4604'
  sha256 'c8c49b5c5850d2302dc38ec296e469076eb7c52b96c6602f19c57aae7a46949b'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: '29d4f921cc895cf48feabfd2dfa06b56118827952bdb41d062aeb41cfecc5952'
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
