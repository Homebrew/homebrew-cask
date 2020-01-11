cask 'studio-3t' do
  version '2020.1.1'
  sha256 '223bd96dbdf3e10fe8c52b2c89766e4d4bee42ce748b25c9203df167afc6c446'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
