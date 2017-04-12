cask 'nzbget' do
  version '18.1'
  sha256 '61acf00f3d274127a1e7c687a7215e04f04b76e04319d82b5fbd2556f1bc6c5a'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'fb133a71209efc75adc7820600ad76d7738a9d4346623b23aae97319d2df4cdb'
  name 'NZBGet'
  homepage 'http://nzbget.net/'

  app 'NZBGet.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/NZBGet',
                '~/Library/Preferences/net.sourceforge.nzbget.plist',
              ]
end
