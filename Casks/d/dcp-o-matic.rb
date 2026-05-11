cask "dcp-o-matic" do
  version "2.18.40"
  sha256 "09b632d5d3c90be35c0d30c5ae8f2b60145abba8ac2ea20039daffdc87464448"

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
