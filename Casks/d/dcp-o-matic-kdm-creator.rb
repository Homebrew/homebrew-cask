cask "dcp-o-matic-kdm-creator" do
  version "2.19.1"
  sha256 "4672d2871876c88458e6d6052476b1f23322f348b4c0846a0efa01de1e6ce511"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} KDM Creator.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.kdm.plist"
end
