cask 'dropshare' do
  version '5,5036'
  sha256 'c28dd83d2da7107d85953dec8e03a5ddaff837ba34fdc547427144e26358e665'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml"
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
