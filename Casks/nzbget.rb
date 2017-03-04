cask 'nzbget' do
  version '18.0'
  sha256 'eaf2f48155c12776a521504905e072ef6361c1b03da281e5fe16a4cafa70c0ef'

  # github.com/nzbget/nzbget was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom',
          checkpoint: 'ca0f3a3f225665ceef413a93c0b23ddedab6102e4746e60137231810017e9113'
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
