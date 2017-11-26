cask 'dropshare' do
  version '4.7,4688'
  sha256 '326063a600aeabfb94aa4df46445d89f2ca4e01570ae6fe7a791e4159fd7782f'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'fd3514295d1980b0c8184e3d221f6a873ae18924d17931d160ed165c60d9407c'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'

  app "Dropshare #{version.major}.app"
  binary "#{appdir}/Dropshare #{version.major}.app/Contents/Resources/ds.sh", target: 'ds'

  zap trash: [
               '~/Library/Application Support/Dropshare 4',
               '~/Library/Caches/net.mkswap.Dropshare4',
               '~/Library/Cookies/net.mkswap.Dropshare4.binarycookies',
               '~/Library/Logs/Dropshare 4',
               '~/Library/Preferences/net.mkswap.Dropshare4.plist',
             ]
end
