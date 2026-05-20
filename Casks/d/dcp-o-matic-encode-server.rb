cask "dcp-o-matic-encode-server" do
  version "2.18.41"
  sha256 "60846bf7a853b91f3a6eec06a8c2d155431cf2f5ecddca7c9fc55dfb367fa82f"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
