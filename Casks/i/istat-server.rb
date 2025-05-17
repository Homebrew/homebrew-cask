cask "istat-server" do
  version "3.03"
  sha256 "0d6df9abe88aa7b29f53abb63413ede2853823cf6fd75b75818ef0190a07e8c7"

  url "https://files.bjango.com/istatserver#{version.major}/istatserver#{version}.zip"
  name "iStat Server"
  desc "Transmits computer or server’s vital statistics"
  homepage "https://bjango.com/istatserver/"

  livecheck do
    url "https://download.bjango.com/istatserver"
    strategy :header_match
  end

  app "iStat Server.app"

  zap trash: [
    "~/Library/Caches/com.bjango.iStatServer",
    "~/Library/HTTPStorages/com.bjango.iStatServer",
    "~/Library/Logs/iStat Server",
    "~/Library/Preferences/com.bjango.iStatServer.plist",
    "~/Library/Saved Application State/com.bjango.iStatServer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
