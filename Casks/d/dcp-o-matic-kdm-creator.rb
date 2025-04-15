cask "dcp-o-matic-kdm-creator" do
  version "2.18.17"
  sha256 "0f62396bcf3f7686ef50236bc2160ca4e6745af5b22cef21504a9d6a00d25f6e"

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
