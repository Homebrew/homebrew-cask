cask 'rocketcake' do
  version '3.0'
  sha256 'c35cdd611331b3b88e773ea53e8a06d92948ea03d9067bb4730e0009b1dce3ec'

  # ambiera.at was verified as official when first introduced to the cask
  url "https://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'https://www.ambiera.com/rocketcake/download.html'
  name 'RocketCake'
  homepage 'https://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
