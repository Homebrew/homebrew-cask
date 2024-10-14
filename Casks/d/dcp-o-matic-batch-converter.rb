cask "dcp-o-matic-batch-converter" do
  version "2.16.95"
  sha256 "64d67a96cecd57c13d6fd4c648a633fc64eb10d9e7831d0b93b2c52cddc67bbb"

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
