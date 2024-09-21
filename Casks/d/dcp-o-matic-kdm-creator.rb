cask "dcp-o-matic-kdm-creator" do
  version "2.16.93"
  sha256 "d390bf0dd7519b8e6a026e274abe6af6a4fe4ca42a3925efedcb9a66c348bfb4"

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
