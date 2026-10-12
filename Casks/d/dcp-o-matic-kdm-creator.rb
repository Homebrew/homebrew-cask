cask "dcp-o-matic-kdm-creator" do
  version "2.19.2"
  sha256 "ff8d5bf1de089b9dd9b83c9f6c7068457d94041845e2945191b306896970b8a6"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} KDM Creator.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.kdm.plist"
end
