cask "dcp-o-matic-kdm-creator" do
  version "2.16.59"
  sha256 "fdd251f0aaa6fcd6d8f3a88dc8ff5ede294f92f155e6906bef96229a1806ea2f"

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
