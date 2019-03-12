cask 'apple-juice' do
  version '1.7.1'
  sha256 'dbad910d134f3a2c6de503d81738d8cf7072a9b6a73c34fad502e59441fafaba'

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
