cask 'dropshare' do
  version '4.9.3,4705'
  sha256 '6b28deaa448922d026f77f0df2ba469023bf14920a43a0b34f85adeff101b967'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: 'bd05339966d2eb0ba4f85d2af9253c6ce1483752abf248d71464a2694360f76d'
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
