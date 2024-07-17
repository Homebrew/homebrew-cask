cask "istat-server" do
  version "3.03"
  sha256 "0d6df9abe88aa7b29f53abb63413ede2853823cf6fd75b75818ef0190a07e8c7"

  url "https://bjango.s3.amazonaws.com/files/istatserver#{version.major}/istatserver#{version}.zip",
      verified: "bjango.s3.amazonaws.com/"
  name "iStat Server"
  desc "Transmits computer or server’s vital statistics"
  homepage "https://bjango.com/istatserver/"

  livecheck do
    url "https://download.bjango.com/istatserver"
    strategy :header_match
  end

  app "iStat Server.app"

  caveats do
    requires_rosetta
  end
end
