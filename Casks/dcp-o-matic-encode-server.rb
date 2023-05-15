cask "dcp-o-matic-encode-server" do
  version "2.16.56"
  sha256 "191da6938ea03795618923bde3b063c72acb682281ce2cde61b35c0ce35ebcaa"

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
