cask "dcp-o-matic-encode-server" do
  version "2.16.29"
  sha256 "1df1f86df2f4e22a578c241b6d2dca4a072e5251fa2b2e968cd5e9ca80d67552"

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
