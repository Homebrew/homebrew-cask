cask 'apple-juice' do
  version '1.8.1'
  sha256 'e5b8467cdb215cf65fb0a18bec356cbcbc4a13156a6ff0ff9ff4b7f1fa2ef8df'

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  appcast 'https://github.com/raphaelhanneken/apple-juice/releases.atom'
  name 'Apple Juice'
  homepage 'https://github.com/raphaelhanneken/apple-juice'

  app 'Apple Juice.app'

  uninstall quit: 'io.raphaelhanneken.applejuice'

  zap trash: [
               '~/Library/Caches/io.raphaelhanneken.applejuice',
               '~/Library/Preferences/io.raphaelhanneken.applejuice.plist',
             ]
end
