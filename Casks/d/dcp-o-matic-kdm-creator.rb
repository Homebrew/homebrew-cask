cask "dcp-o-matic-kdm-creator" do
  version "2.16.71"
  sha256 "40e66b044086e1c74cda56b9453d074735425eceb7dcadd2b954e7dc6ccba41c"

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
