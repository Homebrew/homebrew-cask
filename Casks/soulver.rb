cask 'soulver' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=soulver'
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml',
          :checkpoint => '21b8ff35be18dd29d3ed92fa44cc7d3622bdf4c7caa78b5650c42a5791c9bf19'
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
