cask "dcp-o-matic-disk-writer" do
  version "2.18.40"
  sha256 "f656537adc1ee6f7e07ea17320136b11a40c9ff9f79b4d11af2478c087ef3cc0"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
