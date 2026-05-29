cask "keet" do
  arch intel: "-Intel"

  version "4.16.2"
  sha256 arm:   "0a03f56eac9010928e316129575adfbd4d1dfbe5d9c88b6e8b5890978558a1da",
         intel: "f67b81783442b0f055a587d367dc9f817ce70fc144a6e51daefc1a85561a4064"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
