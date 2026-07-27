cask "dcp-o-matic" do
  version "2.18.45"
  sha256 "c987221a66b56b2078b0d473d965d1e80405f28c0aeea979f3a272350916669c"

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

  zap trash: "~/Library/Preferences/com.dcpomatic"
end
