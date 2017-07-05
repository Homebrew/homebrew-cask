cask 'nzbget' do
  version '19.0'
  sha256 '02896f52816a0c093515ef8a0ce111ec7ce32c308d007c9b46864067a36d71f4'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'cdf5ef1d82b91e409686b3dcd2affd82d2ccde86246af5682dab547979a539cb'
  name 'NZBGet'
  homepage 'https://nzbget.net/'

  app 'NZBGet.app'

  zap trash: [
               '~/Library/Application Support/NZBGet',
               '~/Library/Preferences/net.sourceforge.nzbget.plist',
             ]
end
