cask 'rocketcake' do
  version '2.1'
  sha256 '00f5274ffbb59cdbbcdeaec03f248b6db41dde24de2ff100e9468017780633f7'

  # ambiera.at was verified as official when first introduced to the cask
  url "https://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'https://www.ambiera.com/rocketcake/download.html'
  name 'RocketCake'
  homepage 'https://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
