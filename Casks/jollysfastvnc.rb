cask :v1 => 'jollysfastvnc' do
  version '1.52_1413501'
  sha256 '0b0f4eb3d8a4aed33d36acfbac9fb34763d7b8faca00f8efc88ea2a9d9a0352e'

  url "http://www.jinx.de/JollysFastVNC_files/JollysFastVNC.#{version.sub(%r{_.*},'')}.(#{version.sub(%r{.*_},'')}).10.7.dmg"
  appcast 'http://www.jinx.de/JollysFastVNC.update.0E.i386.xml',
          :sha256 => 'a7e1113e717a81fdab3cb6054b730e1b32c38f5de976bbe2a1c6fffc22a6956f'
  name 'JollysFastVNC'
  homepage 'http://www.jinx.de/JollysFastVNC.html'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'JollysFastVNC.app'

  uninstall :quit => 'de.jinx.JollysFastVNC'

  zap :delete => [
                  '~/Library/Caches/de.jinx.JollysFastVNC',
                  '~/Library/Logs/JollysFastVNC.log*',
                  '~/Library/Preferences/de.jinx.JollysFastVNC.plist',
                  '~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState',
                 ]
end
