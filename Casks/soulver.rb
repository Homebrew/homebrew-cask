cask 'soulver' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=soulver'
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml',
          :sha256 => 'c364aeff900ba505d118cae610bcbdb53ab0ccb94cb483e3a59ba2c8066adea9'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'
  license :commercial

  app 'Soulver.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  # todo verify that this does not contain user-generated content
                  # '~/Library/Application Support/Soulver',
                  '~/Library/Preferences/com.acqualia.soulver.plist',
                  '~/Library/Autosave Information/Unsaved Soulver Document.soulver',
                  # todo glob/expand support
                  # '~/Library/Autosave Information/Unsaved Soulver Document 2.soulver',
                 ]
end
