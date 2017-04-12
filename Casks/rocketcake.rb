cask 'rocketcake' do
  version '1.4'
  sha256 '7e25c77bc839872aba105cc4c86557b7bd1864f6f2d900c38f617ff957903bdc'

  # ambiera.at was verified as official when first introduced to the cask
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'http://www.ambiera.com/rocketcake/download.html',
          checkpoint: '4e91c7b63ff32184be6792352f879b2950f95715807f4a1fb8430934184b4f62'
  name 'RocketCake'
  homepage 'http://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl'
end
