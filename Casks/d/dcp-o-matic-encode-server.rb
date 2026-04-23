cask "dcp-o-matic-encode-server" do
  version "2.18.39"
  sha256 "c8c458d1816e8f52e4bfed1cc58de0a06a58d7690c8d76aa6f69f582fe41d957"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
