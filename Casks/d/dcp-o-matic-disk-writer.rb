cask "dcp-o-matic-disk-writer" do
  version "2.18.1"
  sha256 "8b6794734e4d10ac85cdd98a58e8e5b4f6c37d4431f3a82f08035f77b001082f"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
