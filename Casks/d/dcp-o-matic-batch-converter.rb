cask "dcp-o-matic-batch-converter" do
  version "2.18.45"
  sha256 "bf0c3a6c73aa75924ad39d0160023da4facb1663faeba4b019c64f084dc82792"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
