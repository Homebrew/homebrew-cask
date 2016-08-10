cask 'nzbget' do
  version '16.4'
  sha256 '90d7c1282f89e9cab67dd2681b76b45889481fb188ea7de0a06b842b9d7b5589'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'a8238f0c3e98bd8b5f1dec19b448a6317c73a1e36335a675445c85777846ff55'
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
