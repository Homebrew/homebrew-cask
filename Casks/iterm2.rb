cask :v1 => 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.1'
  sha256 'b8f1bbd11cdb3e26fd9fab6971c28ebeb422361b2cc5fd6e4a843836d5dedeb0'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.gsub('.','_')}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  appcast 'https://iterm2.com/appcasts/final.xml',
          :sha256 => 'c9d0c5800f6851fc55c07d95109f4cb8ef8dfc12a2c1713c1a4dcc5505fba100'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
