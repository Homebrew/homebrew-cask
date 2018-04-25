cask 'postbox' do
  version '6.0.5,1_a8751702fe9e017c2d4ed3fd23c6b6aa9b230c49'
  sha256 'cd3ef95c5778c87fd4da63d20a26fa524a1164d82644dbe873ba56b44a07cc70'

  # amazonaws.com/download.getpostbox.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.getpostbox.com/installers/#{version.before_comma}/#{version.after_comma}/postbox-#{version.before_comma}-mac64.dmg"
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  depends_on macos: '>= :el_capitan'

  app 'Postbox.app'

  zap trash: [
               '~/Library/Application Support/Postbox',
               '~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox',
               '~/Library/Caches/com.postbox-inc.postbox',
               '~/Library/Caches/Postbox',
               '~/Library/PDF Services/Mail PDF with Postbox',
               '~/Library/Preferences/com.postbox-inc.postbox.plist',
               '~/Library/Saved Application State/com.postbox-inc.postbox.savedState',
             ]
end
