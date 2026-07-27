cask "dcp-o-matic-combiner" do
  version "2.18.45"
  sha256 "1527bcc9cf228d5a7a4707e34e084552bd8dce72aff31d29d61419b0fcee817c"

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
