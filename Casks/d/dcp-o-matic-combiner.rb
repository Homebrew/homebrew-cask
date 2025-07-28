cask "dcp-o-matic-combiner" do
  version "2.18.21"
  sha256 "99c12466dcad32958c3c162a207d843a60e3505e0b39b5fe9b58ddfcaaeebdc4"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  disable! date: "2025-07-28", because: "cannot be reliably fetched due to Cloudflare protections"

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
