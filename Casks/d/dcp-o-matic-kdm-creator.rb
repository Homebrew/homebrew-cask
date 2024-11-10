cask "dcp-o-matic-kdm-creator" do
  version "2.16.97"
  sha256 "f260d197c9446a49b93ec01075a059339b99f7ddc7741c4526fda7473836a1d2"

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
