cask 'nzbget' do
  version '16.4'
  sha256 '90d7c1282f89e9cab67dd2681b76b45889481fb188ea7de0a06b842b9d7b5589'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: '8baed2fe56a2d408266e7d5aa88285ffbd46184f2717da1d7d6b3039d79dac31'
  name 'NZBGet'
  homepage 'http://nzbget.net'
  license :gpl

  app 'NZBGet.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/NZBGet',
                '~/Library/Preferences/net.sourceforge.nzbget.plist',
              ]
end
