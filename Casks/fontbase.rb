cask 'fontbase' do
  version '2.0.2'
  sha256 'bbbf9d6d9919c4816e312fa975696b3fba07819b5813a6c39ac914b5a8fdf59d'

  url "http://releases.fontba.se/mac/#{version}/FontBase-#{version}.dmg"
  name 'FontBase'
  homepage 'http://fontba.se/'

  app 'FontBase.app'

  zap delete: [
                '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
                '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
                '~/Library/Application Support/FontBase',
                '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
              ]
end
