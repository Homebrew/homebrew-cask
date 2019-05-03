cask 'nzbget' do
  version '21.0'
  sha256 '8ef46d8ae00e43ef7d169ee406e72d1289985e1f4f169d2759c4811364fba32b'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom'
  name 'NZBGet'
  homepage 'https://nzbget.net/'

  app 'NZBGet.app'

  zap trash: [
               '~/Library/Application Support/NZBGet',
               '~/Library/Preferences/net.sourceforge.nzbget.plist',
             ]
end
