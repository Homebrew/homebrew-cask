cask "dcp-o-matic" do
  version "2.18.38"
  sha256 "018b3e9f8ade5a2a412346ae7854447882f2427df442aa12c6a36df6b6d61c90"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://git.carlh.net/cgit/dcpomatic/"
    regex(%r{href=.*?/tag/\?h=v?(\d+(?:\.\d+)+)["' >]}i)
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
