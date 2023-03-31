cask "dcp-o-matic-batch-converter" do
  version "2.16.50"
  sha256 "36d5ae61bd7d1f5fdf2980d7fa6532df01c10a02e10120a3a31b12e60d1c87fb"

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
