cask "dcp-o-matic" do
  version "2.18.41"
  sha256 "3c9162d6978b5d51d61324808efe162a782e30f7ad4f69bdf4a35ba92ec3c38c"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://git.carlh.net/cgit/dcpomatic/"
    regex(%r{href=.*?/tag/\?h=v?(\d+(?:\.\d+)+)["' >]}i)
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
