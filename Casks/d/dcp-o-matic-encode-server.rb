cask "dcp-o-matic-encode-server" do
  version "2.18.21"
  sha256 "296510141bb6cffd3c27969ab73e5562474f620efd0a18b58c8ff5c538317bb7"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  disable! date: "2025-07-28", because: "cannot be reliably fetched due to Cloudflare protections"

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
