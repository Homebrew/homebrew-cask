cask "starsector" do
  version "0.97a-RC8"
  sha256 "814901c90b9a7575b1c369346afdd6088c169ef6a3cf03688831c52b87f8e9ea"

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
