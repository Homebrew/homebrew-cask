cask "dcp-o-matic-encode-server" do
  version "2.18.16"
  sha256 "9d37177005984be69e1ee6a56df7f367658e5f004ec6949d40d92d1f165f0985"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
