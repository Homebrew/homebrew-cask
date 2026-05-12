cask "keet" do
  arch intel: "-Intel"

  version "4.14.1"
  sha256 arm:   "d76028ab75c7a622ffceed75aabb9f79744c99574d5ddfb9699cfe64f836a801",
         intel: "02dc6ce2bb8f5927ba5d24ac4c5f66b3f49fab9616ffddad12ee07cfb907dff8"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
