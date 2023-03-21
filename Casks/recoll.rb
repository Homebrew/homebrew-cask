cask "recoll" do
  version "1.33.4-20230107-097c8ea8"
  sha256 "d554797e1a6bbea941bea2d0d1888f868b568d564ac68bbeee88e956dff37588"

  url "https://www.lesbonscomptes.com/recoll/downloads/macos/recoll-#{version}.dmg"
  name "recoll"
  desc "Full-text search for your desktop"
  homepage "https://www.lesbonscomptes.com/recoll/pages/index-recoll.html"

  livecheck do
    url "https://www.lesbonscomptes.com/recoll/pages/recoll-macos.html"
    regex(/recoll-(\d\.\d{2}\.\d-\d{8}-\w{8}).dmg/)
  end

  app "recoll.app"
end
