cask "sync" do
  version "2.0.19"
  sha256 :no_check

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
