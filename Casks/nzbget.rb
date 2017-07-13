cask 'nzbget' do
  version '19.1'
  sha256 '31968feb84de337353d3a8387e3ac3cba2c1cebe2e9a432b7ff4e42407c1dea8'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: '23cbf7664ec459011bc7f3df37a702dcba86e0ba17437e6a8326739ce8c128ac'
  name 'NZBGet'
  homepage 'https://nzbget.net/'

  app 'NZBGet.app'

  zap trash: [
               '~/Library/Application Support/NZBGet',
               '~/Library/Preferences/net.sourceforge.nzbget.plist',
             ]
end
