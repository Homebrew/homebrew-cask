cask "dcp-o-matic-kdm-creator" do
  version "2.16.88"
  sha256 "7eb83ecb0ae40441b5dbf97f768ac9aeac2362e400e2b0f380dd9dd18b8719a3"

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
