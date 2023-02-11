cask "dcp-o-matic" do
  version "2.16.42"
  sha256 "76f7519c9a91ee00e749cebb5cff373dd9a59cc0ab922d22d3e9b5c412279161"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
