cask "dcp-o-matic-kdm-creator" do
  version "2.16.82"
  sha256 "c359520497585b27ab3ff7717b40f4e711e08b0663023f63fb78ff85b746c06f"

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
