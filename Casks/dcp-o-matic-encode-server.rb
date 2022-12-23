cask "dcp-o-matic-encode-server" do
  version "2.16.36"
  sha256 "fb1484a67dff27d74459f0d72bcb1fb21aa4dd9f9ed4a0097322a59bee41a39f"

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
