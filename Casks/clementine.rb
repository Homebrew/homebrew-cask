cask :v1 => 'clementine' do
  version '1.2.2'
  sha256 '7e3dac7fb184058e69afbf9cf68850debbbacdfbbd3023fbcdce7c159a2eed75'

  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://clementine-data.appspot.com/sparkle',
          :sha256 => 'aa4ef8bb841b9eea028181b5a884073fe51893f4a15d7061eb84f117ff161383'
  homepage 'http://www.clementine-player.org/'
  license :oss

  app 'clementine.app'
  zap :delete => '~/Library/Preferences/org.clementine-player.Clementine.plist'
end
