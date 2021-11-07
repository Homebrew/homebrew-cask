cask "macdive" do
  version "2.14.1"
  sha256 "424c3ecf798675242f0d123ddbcf20a72fcf37fd2fe100c3ffa7541d4309eaa2"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  name "MacDive"
  desc "Digital dive log"
  homepage "https://www.mac-dive.com/"

  livecheck do
    url "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
    strategy :sparkle
  end

  app "MacDive.app"
end
