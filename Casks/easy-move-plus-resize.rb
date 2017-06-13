cask 'easy-move-plus-resize' do
  version '1.1.0'
  sha256 '9160327ba2e4cfeb17ffd084d2642421ad3fc4ac24ba0449593a0c3f4a544937'

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.zip"
  appcast 'https://github.com/dmarcotte/easy-move-resize/releases.atom',
          checkpoint: 'c3473b96895a84448586da51b6683c27a9b1241f9726bd79bd2b845d383e4043'
  name 'Easy Move+Resize'
  homepage 'https://github.com/dmarcotte/easy-move-resize'

  app 'Easy Move+Resize.app'
end
