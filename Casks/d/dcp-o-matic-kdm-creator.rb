cask "dcp-o-matic-kdm-creator" do
  version "2.18.46"
  sha256 "528e4982d1c0f4cac38a177d19a6c759a8944a503b9225940c4ef98b89ed54e7"

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
