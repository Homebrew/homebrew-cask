cask "dcp-o-matic-batch-converter" do
  version "2.18.20"
  sha256 "3589b2a3830bb1af66f3b7c55675fe85791223a788020fed6d6ab9a94e95fc7b"

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
