cask "dcp-o-matic-combiner" do
  version "2.19.2"
  sha256 "8c55bf5e4242e79d6d60e3471b8e29e192fd8ca528752c9e3856a4ba2e57870c"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Combiner.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.combiner.plist"
end
