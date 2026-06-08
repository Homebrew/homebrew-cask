cask "dcp-o-matic-disk-writer" do
  version "2.18.43"
  sha256 "e7118d8cdd47a4ad2a3f8bf9a0878f69d30241722d743fe2ed46a2fc3e7f90fe"

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
