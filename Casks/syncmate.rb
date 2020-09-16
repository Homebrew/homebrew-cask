cask "syncmate" do
  version "8.1.475"
  sha256 "991e806647abe4bbcf84f37872d64ed9dc11856e6f3270fd74ceb293a7415be7"

  # cdn.electronic.us/products/syncmate/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip"
  appcast "https://cdn.eltima.com/download/syncmate-update/syncmate6.xml"
  name "SyncMate"
  desc "All-in-one sync tool"
  homepage "https://mac.eltima.com/sync-mac.html"

  app "SyncMate.app"
end
