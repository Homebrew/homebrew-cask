cask "starsector" do
  version "0.98a-RC8"
  sha256 "3bc6df1e31188155594b4f4314b7dfa4154781c5848b7a9b494cc915ac935c1a"

  url "https://f005.backblazeb2.com/file/fractalsoftworks/release/starsector_mac-#{version}.zip",
      verified: "f005.backblazeb2.com/file/fractalsoftworks/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  # The upstream preorder page links to the latest dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://fractalsoftworks.com/preorder/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Starsector.app"

  # No zap stanza required
end
