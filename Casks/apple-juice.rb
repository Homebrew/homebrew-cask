cask 'apple-juice' do
  version '1.2.3.1'
  sha256 'a30c9d271bcda8d48c670dbf7e98c2a2c955152c413caea0868889d56b15e258'

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  appcast 'https://github.com/raphaelhanneken/apple-juice/releases.atom',
          checkpoint: '8eab87ff2f3bc47e3259d7b0f5f2da4bc8ae6c25fd71edd49212544ed01baba9'
  name 'Apple Juice'
  homepage 'https://github.com/raphaelhanneken/apple-juice'

  app 'Apple Juice.app'

  uninstall quit: 'io.raphaelhanneken.applejuice'

  zap trash: [
               '~/Library/Caches/io.raphaelhanneken.applejuice',
               '~/Library/Preferences/io.raphaelhanneken.applejuice.plist',
             ]
end
