cask 'messenger-video' do
  version :latest
  sha256 :no_check

  # facebook.com was verified as official when first introduced to the cask
  url 'https://www.facebook.com/messenger/call/download/mac'
  name 'Messenger Video'
  homepage 'https://www.messenger.com/messengervideo'

  depends_on macos: '>= :mavericks'

  app 'Messenger Video.app'

  zap trash: [
               '~/Library/Preferences/desktop-video-desktop.plist',
               '~/Library/Saved Application State/desktop-video-desktop.savedState',
             ]
end
