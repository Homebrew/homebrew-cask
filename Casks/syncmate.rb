cask 'syncmate' do
  version '6.6.336'
  sha256 'cd8c0115fea98c353b6c1e7ab945c87d406a92c0eda11e1b285b2df401f2e968'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast "http://www.eltima.com/download/syncmate-update/syncmate#{version.major}.xml",
          checkpoint: 'a057f63a65f4b4156f7847a777db21fa5d7328f5f47ea17e1d9e6977f603049b'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com/'

  app 'SyncMate.app'
end
