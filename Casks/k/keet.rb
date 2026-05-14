cask "keet" do
  arch intel: "-Intel"

  version "4.15.0"
  sha256 arm:   "59a303f36fea6aabcbbc2e4ffea636212753abb251e1d71acca573cf320c53af",
         intel: "e979e14bd6b5f47e8d0508e73d73d483fd53071a81985cac8da3a68d056c8d87"

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
