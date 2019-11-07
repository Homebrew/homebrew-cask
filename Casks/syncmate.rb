cask 'syncmate' do
  version '8.0.469'
  sha256 '97eb95fdf49fb8d493a3b9691a9ec40b7df1d88b4c272aa238ad5e95cef5c3a1'

  # cdn.electronic.us/products/syncmate/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip"
  appcast 'https://cdn.eltima.com/download/syncmate-update/syncmate6.xml'
  name 'SyncMate'
  homepage 'https://mac.eltima.com/sync-mac.html'

  app 'SyncMate.app'
end
