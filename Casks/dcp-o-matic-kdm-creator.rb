cask "dcp-o-matic-kdm-creator" do
  version "2.16.34"
  sha256 "bcaf98229579e3ba54bb5235bed1ac775affdcdbbd65b9e22b425e501f03022c"

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
