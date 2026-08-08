cask "dcp-o-matic" do
  version "2.19.0"
  sha256 "4cbea29c78dbdcaf294256b3a86f48656a6644d06372aa312bae8ab944c3a815"

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
