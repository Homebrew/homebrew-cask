cask 'apple-juice' do
  version '1.3.0'
  sha256 'b77a9deefe429ce875c8b628e3fb41b4fb6dbe4408401dd9ec3b9a845b51bc45'

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  appcast 'https://github.com/raphaelhanneken/apple-juice/releases.atom',
          checkpoint: '54ca7b9e5b7ddeba0af9430ef15c2518d074010c6ec2c2be9179b241ca226fa0'
  name 'Apple Juice'
  homepage 'https://github.com/raphaelhanneken/apple-juice'

  app 'Apple Juice.app'

  uninstall quit: 'io.raphaelhanneken.applejuice'

  zap trash: [
               '~/Library/Caches/io.raphaelhanneken.applejuice',
               '~/Library/Preferences/io.raphaelhanneken.applejuice.plist',
             ]
end
