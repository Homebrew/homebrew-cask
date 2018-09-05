cask 'nzbget' do
  version '20.0'
  sha256 'f19ce1f4e0721c71f76b86ac17b4dcd32eb1a068765c3b4019231784455d24ea'

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
