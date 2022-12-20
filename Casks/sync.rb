cask "sync" do
  version "2.1.4"
  # https://sync.com/download/sync-packages/osx/VERSION_NUMBER/cur/Sync.dmg.sha256
  sha256 "50995f191977aee9a656416ad90eec8c7a4e1dbc64e05bc35b5a9326c774b253"

  url "https://www.sync.com/download/apple/Sync.dmg"
  name "Sync"
  desc "Store, share and access files from anywhere"
  homepage "https://www.sync.com/"

  livecheck do
    url "https://www.sync.com/install/"
    regex(/(\d+(?:\.\d+)+)\n.*release\s*notes/i)
  end

  app "Sync.app"
end
