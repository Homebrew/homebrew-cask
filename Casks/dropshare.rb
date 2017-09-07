cask 'dropshare' do
  version '4.6.4,4626'
  sha256 '07b7d289bb65b7d810a83258eb524188f04250f351a7860ea082b06be52c7b19'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'c41a0d0b597b59839084537e33509df834521c79a91f1cb494d85e022019fb69'
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
