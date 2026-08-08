cask "dcp-o-matic-combiner" do
  version "2.19.0"
  sha256 "c322e79c695a6ba64b05378189d2f6672628c452b04902e6f44ce10989f37ada"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Combiner.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.combiner.plist"
end
