cask "dcp-o-matic" do
  version "2.18.31"
  sha256 "13bbcbeb335da648082acad7c6b4b808b9fb0c96d7aeebaef205900da07c76b9"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/Stable\s+release:\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
