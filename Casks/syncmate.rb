cask 'syncmate' do
  version '7.2.407'
  sha256 'ff72287ce2199e2529d0a2f2cad7eb7c5ec2626553f0633d8cecc8a1f9c9dd46'

  url "https://www.eltima.com/download/syncmate-update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  depends_on macos: '>= :mountain_lion'

  app 'SyncMate.app'
end
