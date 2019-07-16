cask 'apple-juice' do
  version '1.10.1'
  sha256 'e212218fc985b542d784438b523f601103a605d00c2d84d392a89a19c8694d4f'

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  appcast 'https://github.com/raphaelhanneken/apple-juice/releases.atom'
  name 'Apple Juice'
  homepage 'https://github.com/raphaelhanneken/apple-juice'

  depends_on macos: '>= :sierra'

  app 'Apple Juice.app'

  uninstall quit: 'io.raphaelhanneken.applejuice'

  zap trash: [
               '~/Library/Caches/io.raphaelhanneken.applejuice',
               '~/Library/Preferences/io.raphaelhanneken.applejuice.plist',
             ]
end
