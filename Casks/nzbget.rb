cask 'nzbget' do
  version '17.1'
  sha256 'cc7bd923974c56b59bab78025175a4a7248a495e8d514bd73c1d8ee4aba281d2'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'cc9ea4ea0bc52bb1f0cb11e01f32d79c4e90c85dda1e20f2fed81abde027fb40'
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
