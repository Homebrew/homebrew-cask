cask 'dropshare' do
  version '4.9,4699'
  sha256 '86179ad5bafb05ec2bb539760fd33a7b408ebdb6820edb7aa3ad883c255a9f4a'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'd158c795fdb07b01c72a8d92fa44728d6c875e3e4a48a986a2f2a3c99cfbf6e1'
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
