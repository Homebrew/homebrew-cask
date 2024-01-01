cask "dcp-o-matic-batch-converter" do
  version "2.16.71"
  sha256 "0a3c327fc552d72e66cf3d4c242d4dc3f7f9e14cbe7eae7a888b1afe4f1a0e29"

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
