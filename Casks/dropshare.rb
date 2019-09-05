cask 'dropshare' do
  version '5.4.4,5120'
  sha256 '86eedd0ab392ba7ad303d235c835850d96d942110af6ad930b4f4b73fe858676'

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
