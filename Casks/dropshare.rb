cask 'dropshare' do
  version '5.6.1,5139'
  sha256 '4dcb419f38a06d856dde1033b5eec54f831048335206eff87590defff754824f'

  # d2wvuuix8c9e48.cloudfront.net/ was verified as official when first introduced to the cask
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
