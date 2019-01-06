cask 'rocketcake' do
  version '2.2'
  sha256 '7e3471911ee2c431560c4c64186c18b616e1630f36c6fd358ce4e1b165ca583e'

  # ambiera.at was verified as official when first introduced to the cask
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'https://www.ambiera.com/rocketcake/download.html'
  name 'RocketCake'
  homepage 'https://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
