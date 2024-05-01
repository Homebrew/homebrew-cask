cask "dcp-o-matic-encode-server" do
  version "2.16.82"
  sha256 "dab649603cb6f2ab216303714eb155214d7e0cefdb9b9804e24f1987aad1d2ff"

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
