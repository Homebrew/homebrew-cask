cask "dcp-o-matic" do
  version "2.14.56"
  sha256 "800758cd50f918e2968421870eb0cf3d5f63a49ebc6654264f1a8d38e6dd6486"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"
end
