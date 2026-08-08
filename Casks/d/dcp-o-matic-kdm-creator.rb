cask "dcp-o-matic-kdm-creator" do
  version "2.19.0"
  sha256 "fa0515fbf6656af540f186c75ed2ff63e92c4b53762941f25713e1fb23596ab3"

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
