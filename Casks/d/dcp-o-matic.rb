cask "dcp-o-matic" do
  version "2.18.39"
  sha256 "03a95ecc8c2aa0aa4e3a613b05c5d5afedee53be30a211bc64b9cf547591d238"

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
