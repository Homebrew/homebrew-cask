cask "dcp-o-matic-encode-server" do
  version "2.18.44"
  sha256 "9c5c3a0f386e2fbd93342ca0f1851e6828194573d57e8eeb3d45a8f61b7f16f6"

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
