cask "dcp-o-matic-combiner" do
  version "2.18.46"
  sha256 "8c8bd42bf0f0163d837ac3b5199e9f881d6771d7600359ebbf89d89a804b9f88"

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
