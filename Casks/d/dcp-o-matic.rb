cask "dcp-o-matic" do
  version "2.18.14"
  sha256 "697400e7082811aedb26ff233a5119d8dadeb4f660039f39017ea24435af2ada"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
