cask 'abstract' do
  version '0.66.2'
  sha256 '56295d1b1f8f0a2a8631a942a0eebd3f99f87339bb0600372f01fc6ec8795f39'

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
