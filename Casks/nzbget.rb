cask :v1 => 'nzbget' do
  version '16.3'
  sha256 'fe43e60ca7cb8e34fe3efb141c7da6441dd784da39328fc5d8706599bc9f649e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom'
  name 'NZBGet'
  homepage 'http://nzbget.net'
  license :gpl

  app 'NZBGet.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/NZBGet',
                  '~/Library/Preferences/net.sourceforge.nzbget.plist'
                 ]
end
