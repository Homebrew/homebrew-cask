cask 'audio-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.macsome.com/AudioEditor.dmg'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml',
          :sha256 => 'eae94846cf703af4153e2a3d7627b6a94f057a6bdf31d0c25a2e959108d749c8'
  name 'Macsome Audio Editor'
  homepage 'http://www.macsome.com/audio-editor-mac/'
  license :gratis

  app 'Audio Editor.app'
end
