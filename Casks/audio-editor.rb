cask 'audio-editor' do
  version '1.0'
  sha256 '35beff4bbbfbce77c2aa1f2f4c044f8845a0a28cfac4c8f95409022348e31c25'

  url 'http://www.macsome.com/AudioEditor.dmg'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml',
          checkpoint: 'cba23cfdf00721f576b7f14ab9a6ce7dd54fae398054193e3f7d120316cb0bb0'
  name 'Macsome Audio Editor'
  homepage 'http://www.macsome.com/audio-editor-mac/'

  app 'Audio Editor.app'
end
