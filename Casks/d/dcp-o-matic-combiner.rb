cask "dcp-o-matic-combiner" do
  version "2.19.1"
  sha256 "0a9c8f3204129f65145638e3a209866fd5cd1bccc6f86365efdfe8ba7df70fa4"

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
