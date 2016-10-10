cask 'nzbget' do
  version '17.0'
  sha256 '454408c32a652d569d23bf757aadb63dc16943ac69b4a8842eaaa9e2df67d67e'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'f84a8fe899e4ff163afdb81af13bb7572f8070b5b9289a6fca0606dcb624d326'
  name 'NZBGet'
  homepage 'http://nzbget.net'

  app 'NZBGet.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/NZBGet',
                '~/Library/Preferences/net.sourceforge.nzbget.plist',
              ]
end
