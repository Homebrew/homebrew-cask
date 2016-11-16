cask 'syncmate' do
  version '6.6.333'
  sha256 '72cf1e5ea9a7f5b5c99a2be665109311ab5ec88c1ecfd23e973154b5221453a5'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast "http://www.eltima.com/download/syncmate-update/syncmate#{version.major}.xml",
          checkpoint: '3ed8ba500cf8973c675df4d8c57880a0c12231f3f9f3da7c398a923721158f29'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'

  app 'SyncMate.app'
end
