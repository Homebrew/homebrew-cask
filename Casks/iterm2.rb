cask 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.4'
  sha256 '1062b83e7808dc1e13362f4a83ef770e1c24ea4ae090d1346b49f6196e9064cd'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.gsub('.', '_')}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          :sha256 => 'bfb02febff8a4ff80562f0b84ed9bb6dc88f97c8b9c46733931cfda183320476'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
