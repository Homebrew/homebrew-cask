cask 'apple-juice' do
  version '1.2.3.1'
  sha256 'a30c9d271bcda8d48c670dbf7e98c2a2c955152c413caea0868889d56b15e258'

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  name 'Apple Juice'
  homepage 'https://github.com/raphaelhanneken/apple-juice'

  app 'Apple Juice.app'
end
