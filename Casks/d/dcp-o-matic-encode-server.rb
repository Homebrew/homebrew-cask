cask "dcp-o-matic-encode-server" do
  version "2.19.2"
  sha256 "ca8490a338c2be3351e983d10cd0b12515d38f047ecebd7e4330dc8fe936a5a5"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Encode Server.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.server.plist"
end
