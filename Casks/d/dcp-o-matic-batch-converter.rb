cask "dcp-o-matic-batch-converter" do
  version "2.16.76"
  sha256 "be5d3b64f71a600ec38142712feb84720193ca3af955aeab4ed74e638b0a01b1"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
