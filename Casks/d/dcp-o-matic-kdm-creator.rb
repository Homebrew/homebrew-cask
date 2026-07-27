cask "dcp-o-matic-kdm-creator" do
  version "2.18.45"
  sha256 "53203cdd254028799007aac124757f7139e64f527cf8804338d06699d5d4c2e4"

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
