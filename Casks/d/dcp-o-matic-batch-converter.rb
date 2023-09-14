cask "dcp-o-matic-batch-converter" do
  version "2.16.64"
  sha256 "5728da2edfffac69a16bcdc0231ca7714a4e3aef413123ada061e3e03c1a6fce"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
