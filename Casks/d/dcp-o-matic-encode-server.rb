cask "dcp-o-matic-encode-server" do
  version "2.18.38"
  sha256 "d0af4ace78a567a19d869f7dfcd39cd1b715f3a593019c64162ccaccbdb470d9"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
