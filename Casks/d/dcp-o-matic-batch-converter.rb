cask "dcp-o-matic-batch-converter" do
  version "2.18.21"
  sha256 "75fc0fd77acb440b6e293bb4ade248517d57176b70970df710ec9d32acf543a7"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  disable! date: "2025-07-28", because: "cannot be reliably fetched due to Cloudflare protections"

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
