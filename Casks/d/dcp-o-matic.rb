cask "dcp-o-matic" do
  version "2.18.42"
  sha256 "56dc7da39ca1ae1b80b076813ac79ad6e8e92e052d0cb1ec4601f3b4964805a0"

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
