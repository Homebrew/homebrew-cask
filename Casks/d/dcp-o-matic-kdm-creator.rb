cask "dcp-o-matic-kdm-creator" do
  version "2.16.76"
  sha256 "9dda08b712c5ff5675f53d4eeafa5046a41b57a618febeba4584acaefa588c91"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
