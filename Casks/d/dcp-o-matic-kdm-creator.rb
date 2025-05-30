cask "dcp-o-matic-kdm-creator" do
  version "2.18.19"
  sha256 "7e762499850b20283203634a7b17953fd182f20be4913adffe6a05c2ba9a4088"

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
