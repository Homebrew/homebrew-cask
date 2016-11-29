cask 'easy-move-plus-resize' do
  version '1.1.0'
  sha256 '9160327ba2e4cfeb17ffd084d2642421ad3fc4ac24ba0449593a0c3f4a544937'

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.zip"
  appcast 'https://github.com/dmarcotte/easy-move-resize/releases.atom',
          checkpoint: '33ab0e506b77da075d48917c8c9f595ec387848d97e04d1b4f69e473c7e5a14e'
  name 'Easy Move+Resize'
  homepage 'https://github.com/dmarcotte/easy-move-resize'

  app 'Easy Move+Resize.app'
end
