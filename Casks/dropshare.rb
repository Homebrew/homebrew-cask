cask 'dropshare' do
  version '4.5.4,4564'
  sha256 '4b8d7eda24a0025957b8f2c3299fcefd45b2f614a4506f342c54f4019a938096'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'e71a7dc770d837889a71191a33868f10b597d2fc6e79c38df1b269522fb25adf'
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
