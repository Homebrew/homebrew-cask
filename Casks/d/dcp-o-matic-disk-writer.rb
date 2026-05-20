cask "dcp-o-matic-disk-writer" do
  version "2.18.41"
  sha256 "432498d02b270201a4f3673a6797685c17ed69d8cbfa0047ea5aaa6be7b9a67d"

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
