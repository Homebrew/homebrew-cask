cask "dcp-o-matic-encode-server" do
  version "2.18.40"
  sha256 "c5e92b6eb3f745cfbf408d01a7d7b2b9e99bb7a3b12f67d562e5c87689b1ef53"

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
