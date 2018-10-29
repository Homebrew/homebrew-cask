cask 'rocketcake' do
  version '2.0'
  sha256 'aa1de42a3771a429247b23500586cb64a39f4ca8ca605308e6b09c920280e62d'

  # ambiera.at was verified as official when first introduced to the cask
  url "https://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'https://www.ambiera.com/rocketcake/download.html'
  name 'RocketCake'
  homepage 'https://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
