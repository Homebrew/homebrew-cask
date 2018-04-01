cask 'keycast' do
  version '1.1'
  sha256 '61c382ee6aafa393470b86a833a93ecbe1ce91a5665f273109631733facdb727'

  url "https://github.com/cho45/KeyCast/releases/download/v#{version}/KeyCast.dmg"
  appcast 'https://github.com/cho45/KeyCast/releases.atom',
          checkpoint: 'b19940028a62404a4a541fe28d534439e75fb917163c4c32f16631a63a716318'
  name 'KeyCast'
  homepage 'https://github.com/cho45/KeyCast'

  app 'KeyCast.app'
end
