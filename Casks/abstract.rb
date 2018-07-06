cask 'abstract' do
  version '0.71.1'
  sha256 '3e73e429a8a802b6d187d947a0d7ddee8ae8519fda31bf768a7444081ce53ae3'

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
