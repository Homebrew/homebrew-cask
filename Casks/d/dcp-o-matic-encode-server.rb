cask "dcp-o-matic-encode-server" do
  version "2.16.62"
  sha256 "0c067bdc5ff4f15327304a44036655b8fef5588a451d02008f168912b79ce0bf"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
