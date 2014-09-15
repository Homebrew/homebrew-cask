class AudioEditor < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.macsome.com/AudioEditor.dmg'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml'
  homepage 'http://www.macsome.com/audio-editor-mac/index.html'

  app 'Audio Editor.app'
end
