cask "dcp-o-matic-disk-writer" do
  version "2.16.73"
  sha256 "60457b5174bf0808a2e1e6b9b59dbfe90450ecc53fd2f5e781082203098bc778"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
