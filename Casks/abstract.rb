cask 'abstract' do
  version '0.67.8'
  sha256 '8c63f4f194c069cd4f9e2cb061adeed47776e0c7b81d4eab3b69144ad5f6a9ad'

  # s3.amazonaws.com/propeller-internal-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/propeller-internal-releases/Abstract-#{version}.dmg"
  name 'Abstract'
  homepage 'https://www.goabstract.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Abstract.app'

  zap trash: [
               '~/Library/Application Support/Abstract',
               '~/Library/Caches/com.elasticprojects.abstract-desktop',
               '~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.plist',
               '~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState',
             ]
end
