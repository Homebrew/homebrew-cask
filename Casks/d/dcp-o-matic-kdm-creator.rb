cask "dcp-o-matic-kdm-creator" do
  version "2.18.1"
  sha256 "44833e6e3c9658e17e801946f9b58bfa0b69f08c7cb4a26972a8e77a701c952b"

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
