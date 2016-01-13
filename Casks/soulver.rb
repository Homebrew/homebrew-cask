cask 'soulver' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=soulver'
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml',
          :checkpoint => 'a9b7fd6b220bcbc4174af28176edfb36f903325a1ae4e93a8ef6ae13c06f084e'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'
  license :commercial

  app 'Soulver.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                   '~/Library/Application Support/Soulver',
                   '~/Library/Preferences/com.acqualia.soulver.plist',
                   '~/Library/Autosave Information/Unsaved Soulver Document.soulver',
                   # TODO: glob/expand support
                   # '~/Library/Autosave Information/Unsaved Soulver Document 2.soulver',
                 ]
end
