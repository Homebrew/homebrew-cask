cask 'audio-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.macsome.com/AudioEditor.dmg'
  name 'Macsome Audio Editor'
  name 'Macsome AudioEditor'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml',
          :sha256 => '562863ab96acd8e542cfa83a63ffb7bab65f8ac91327c537567d8128b3fab30e'
  homepage 'http://www.macsome.com/audio-editor-mac/'
  license :gratis

  app 'Audio Editor.app'
end
