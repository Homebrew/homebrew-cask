cask 'audio-editor' do
  version '1.0'
  sha256 '35beff4bbbfbce77c2aa1f2f4c044f8845a0a28cfac4c8f95409022348e31c25'

  url 'http://www.macsome.com/AudioEditor.dmg'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml'
  name 'Macsome Audio Editor'
  homepage 'http://www.macsome.com/audio-editor-mac/'

  app 'Audio Editor.app'
end
