cask 'avocode' do
  version '2.5.3'
  sha256 'd22f9417f3582bc677d6c7df8ec0ddf65e0962196f2402a481d118b7a0ad3bab'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'

  zap delete: [
                '~/Library/Preferences/com.madebysource.avocode.plist',
                '~/Library/Application Support/Avocode',
                '~/Library/Saved Application State/com.madebysource.avocode.savedState',
                '~/Library/Caches/Avocode',
                '~/.avcd',
              ]
end
