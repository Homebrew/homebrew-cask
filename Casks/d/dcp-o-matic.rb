cask "dcp-o-matic" do
  version "2.19.2"
  sha256 "ae54cfcd309b38c68c058a657949d463010a3f8e023f4922ae794badaf48d158"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://git.carlh.net/git/dcpomatic.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "DCP-o-matic #{version.major}.app"

  uninstall quit: "com.dcpomatic"

  zap trash: "~/Library/Preferences/com.dcpomatic"
end
