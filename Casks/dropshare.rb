cask 'dropshare' do
  version '5.1.1,5048'
  sha256 'e763ef88bdca0ad3ea81b8430757476cf4432bf0e3f370a66e7e33d4bb843dd2'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml"
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
