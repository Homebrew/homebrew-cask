cask "dcp-o-matic-combiner" do
  version "2.18.42"
  sha256 "afb5468c4ea8645db636294533e1566fa87f8cee466afb800f8e29be83d5755b"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
