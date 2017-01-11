cask 'pixelconduit' do
  version '3.0.2'
  sha256 '726130b5b1ff82a1e543f8f0f3dec1e35cb69f4997efb5e2ad764ae2369ef5ab'

  url "http://pixelconduit.com/PixelConduit_v#{version.dots_to_underscores}.zip"
  appcast 'http://pixelconduit.com/downloads.html',
          checkpoint: 'f9bc1dd5294f776c51f4efe29745a2438668ccdf93dc8fa1ad19b613b1ffd29c'
  name 'PixelConduit'
  homepage 'http://pixelconduit.com/'

  app 'PixelConduit.app'

  zap delete: [
                '~/Library/Application Support/Conduit',
                '~/Library/Preferences/fi.lacquer.PixelConduit.plist',
              ]
end
