cask 'brisk' do
  version '1.1.0'
  sha256 '6a407ca571d558efcc465777583b7bc24ffc62828aa0f510357da69296a48b1d'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: '23ca138fa5319b1798a5d0551c84c75f04e647fd7f795c9c0e0b70fc9979b0e6'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
