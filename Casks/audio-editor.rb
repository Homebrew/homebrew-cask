cask :v1 => 'audio-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.macsome.com/AudioEditor.dmg'
  name 'Macsome Audio Editor'
  name 'Macsome AudioEditor'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml'
  homepage 'http://www.macsome.com/audio-editor-mac/'
  license :gratis

  app 'Audio Editor.app'
end
