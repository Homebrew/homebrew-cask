cask "dcp-o-matic" do
  version "2.18.46"
  sha256 "523b9f73175c4ee2a7c85c0e7f8e14eef81954cae9441c7f8454c2537b4de79a"

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
