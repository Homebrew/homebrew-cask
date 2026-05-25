cask "dcp-o-matic-batch-converter" do
  version "2.18.42"
  sha256 "fc80ab63f2be9d4e2bfc5f54e0a75fd9cdb273b5d79f602ad0245f7fe86d614d"

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
