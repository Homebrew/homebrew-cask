cask 'dropshare' do
  version '4.6.7,4640'
  sha256 'aa360a6175aa637587f8af62d31f5426bb5f19769278b987627b6f0a9e8f114a'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'aff5d05bcdd32e159004475074ede27bea42c80cd55129cba35f2905feae5f19'
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
