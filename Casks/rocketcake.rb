cask 'rocketcake' do
  version '3.1'
  sha256 '6bac409e02d1d22b237c674ec8a97c36e6901ece612c8041f4b0968d4b26c37c'

  # ambiera.at was verified as official when first introduced to the cask
  url "https://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'https://www.ambiera.com/rocketcake/download.html'
  name 'RocketCake'
  homepage 'https://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
