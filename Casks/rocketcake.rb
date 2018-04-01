cask 'rocketcake' do
  version '1.5'
  sha256 'c100849035d54b9a43cf5a3fe8837650c8771de6dd174cba582490ec10590653'

  # ambiera.at was verified as official when first introduced to the cask
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'http://www.ambiera.com/rocketcake/download.html',
          checkpoint: '64468b677f7efa6ce15efb355a94377cd40b59be7fe83bd41772ac14d1b0f44e'
  name 'RocketCake'
  homepage 'http://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl*'
end
