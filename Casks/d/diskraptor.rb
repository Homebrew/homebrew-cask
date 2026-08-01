cask "diskraptor" do
  version "1.0.9"
  sha256 "d444aebdb1f68b5105332b6340406024b98752b821bf132e4c7fcb03604b70d7"

  url "https://github.com/SunMe1977/DiskRaptor/releases/download/v#{version}/DiskRaptor-#{version}-macos.dmg"
  name "DiskRaptor"
  desc "Ultra-fast cross-platform disk space analyzer"
  homepage "https://github.com/SunMe1977/DiskRaptor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "DiskRaptor.app"
end
