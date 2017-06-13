cask 'picasa' do
  version '3.9'
  sha256 'df84018272ecf0f56e78e73cb6eb8f7c08911f6e24294fdc811e362a35dace9c'

  url "https://dl.google.com/photos/picasamac#{version.no_dots}.dmg"
  name 'Picasa'
  homepage 'https://picasa.google.com/'

  app 'Picasa.app'

  zap delete: [
                '~/Library/Preferences/com.google.picasa.plist',
                '~/Library/Application Support/Google/Picasa3',
                '~/Library/Saved Application State/com.google.picasa.savedState',
              ]

  caveats do
    discontinued
  end
end
