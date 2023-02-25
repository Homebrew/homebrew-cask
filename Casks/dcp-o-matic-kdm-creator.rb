cask "dcp-o-matic-kdm-creator" do
  version "2.16.44"
  sha256 "28adf37b918ae9826f675b563bf1d4b8065067f725380136e6b5af997cf1e8b5"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
