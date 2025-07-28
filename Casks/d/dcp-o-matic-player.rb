cask "dcp-o-matic-player" do
  version "2.18.21"
  sha256 "fad2a95fe13e6bbd887c171a446f076005f13c74dc5b7a8e2dab8aaa91ff9057"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  disable! date: "2025-07-28", because: "cannot be reliably fetched due to Cloudflare protections"

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
