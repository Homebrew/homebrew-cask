cask 'dropshare' do
  version '4.8,4693'
  sha256 'df366b7c90e9d2fdc03c956fda11ca26c001ea660df96aaf3c687ba8fd608c1b'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: '07f95e01339197f3d9ff6f22224d275dd8af2dcaf3fb1424f9016968d7f01a85'
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
