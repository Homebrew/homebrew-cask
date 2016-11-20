cask 'nzbget' do
  version '17.1'
  sha256 'cc7bd923974c56b59bab78025175a4a7248a495e8d514bd73c1d8ee4aba281d2'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: '40878b72afb95745be8ac09745b31d2bb72bdfe8d1a32b9778c07b436b64dcd8'
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
