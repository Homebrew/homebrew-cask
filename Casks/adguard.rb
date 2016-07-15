cask 'adguard' do
  version '1.3.0'
  sha256 '5c3dacdb060475a98998ab7d86397cd041c574904b3055f422f262c84f9a6b21'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '1ca05e88a34737cde6c0c9c2292e45e30b0b243db9b256477f568da7b5687d0c'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :commercial

  app 'Adguard.app'
end
