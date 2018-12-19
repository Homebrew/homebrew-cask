cask 'abstract' do
  version '75.0.3'
  sha256 'f6ce8a60715420354d3d2e0cb45fe433f9b6de017e275a7710cc7d8ab8f38a22'

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
