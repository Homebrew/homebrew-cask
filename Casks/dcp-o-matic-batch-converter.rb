cask "dcp-o-matic-batch-converter" do
  version "2.16.60"
  sha256 "c8ce4328fc272a73ef96e2f6009f51182eec0c7a48df1fe29cb92e9e14f29d22"

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
