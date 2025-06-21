cask "starsector" do
  version "0.98a-RC8"
  sha256 "3bc6df1e31188155594b4f4314b7dfa4154781c5848b7a9b494cc915ac935c1a"

  url "https://f005.backblazeb2.com/file/fractalsoftworks/release/starsector_mac-#{version}.zip",
      verified: "f005.backblazeb2.com/file/fractalsoftworks/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  livecheck do
    url "https://fractalsoftworks.com/preorder/"
    regex(/href=.*?starsector_mac[._-]v?(\d+(?:\.\d+)+[\w._-]+)\.zip/i)
  end

  app "Starsector.app"

  # No zap stanza required
end
