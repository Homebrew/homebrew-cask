cask "starsector" do
  version "0.97a-RC7"
  sha256 "080f091f3c587d552768f45a022beb368bfbde7953020595ee2efed6ca6bd323"

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
