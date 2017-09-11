cask 'easy-move-plus-resize' do
  version '1.1.1'
  sha256 '3406b741fb05659406ff2a304fbf6cdc74b4b440096747e7b9bc2b7d53e2ac9d'

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.app.zip"
  appcast 'https://github.com/dmarcotte/easy-move-resize/releases.atom',
          checkpoint: '3a64a1e55365b000ce2ced97448e7477b24bad00e29f3cd82f83369eda090330'
  name 'Easy Move+Resize'
  homepage 'https://github.com/dmarcotte/easy-move-resize'

  app 'Easy Move+Resize.app'
end
