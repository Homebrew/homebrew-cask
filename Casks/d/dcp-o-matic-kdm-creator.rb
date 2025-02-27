cask "dcp-o-matic-kdm-creator" do
  version "2.18.12"
  sha256 "ae6d04ab055f5cb0d09b44c3fcac68a43beb132e21283e67db71e241dd87196c"

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
