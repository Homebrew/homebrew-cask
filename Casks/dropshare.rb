cask 'dropshare' do
  version '5.1.8,5094'
  sha256 '5b4e6440a804a7e20422867ed6547f7f451e919837716c4a5efdc32377271154'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://dropshare.app/sparkle/Dropshare#{version.major}.xml"
  name 'Dropshare'
  homepage 'https://dropshare.app/'

  app "Dropshare #{version.major}.app"
  binary "#{appdir}/Dropshare #{version.major}.app/Contents/Resources/ds.sh", target: 'ds'

  zap trash: [
               "~/Library/Application Support/Dropshare #{version.major}",
               "~/Library/Caches/net.mkswap.Dropshare#{version.major}",
               "~/Library/Cookies/net.mkswap.Dropshare#{version.major}.binarycookies",
               "~/Library/Logs/Dropshare #{version.major}",
               "~/Library/Preferences/net.mkswap.Dropshare#{version.major}.plist",
             ]
end
