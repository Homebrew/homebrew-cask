cask "dcp-o-matic-encode-server" do
  version "2.18.1"
  sha256 "1956e6f7a4337f909c0642944a0f6690edabbcfa13b1135a7c107b5466d5c7fa"

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
