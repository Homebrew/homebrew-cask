cask "dcp-o-matic-batch-converter" do
  version "2.16.56"
  sha256 "ac835c7dc73c5425e3759ea5af1c44cb0b74045c676c782bcf9d8a735ec88c7e"

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
