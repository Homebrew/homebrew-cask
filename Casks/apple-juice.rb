cask 'apple-juice' do
  version '1.10.0'
  sha256 '59e8a5d46faa48c655f6b2ea5cd5c477448eb2d4aaf259503291e0072b43d62a'

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
