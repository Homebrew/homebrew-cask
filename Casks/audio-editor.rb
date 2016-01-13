cask 'audio-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.macsome.com/AudioEditor.dmg'
  appcast 'http://www.macsome.com/audio-editor-mac/su_feed.xml',
          :checkpoint => 'cba23cfdf00721f576b7f14ab9a6ce7dd54fae398054193e3f7d120316cb0bb0'
  name 'Macsome Audio Editor'
  homepage 'http://www.macsome.com/audio-editor-mac/'
  license :gratis

  app 'Audio Editor.app'
end
