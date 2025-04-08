cask "dcp-o-matic-kdm-creator" do
  version "2.18.16"
  sha256 "bb829e310b612a077f6b34e5f856be5836a88529cf6b353acee982e78e1e8ada"

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
