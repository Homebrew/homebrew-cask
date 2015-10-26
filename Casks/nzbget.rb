cask :v1 => 'nzbget' do
  version '16.2'
  sha256 'ddf0673ae226a68e53bf34a069f2c10a2fb459335dda32c424eeaf648d909a56'

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
