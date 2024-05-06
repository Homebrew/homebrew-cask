cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.2.0"
  sha256  arm:   "da5824aa3ed5e30bcd745039d4a9b1bff7bce421ccc771a250de5de3ffe914e7",
          intel: "66813488b4f320fae3590dc5d8e2a07050dbd3900808a3c87eea4227ab0063e8"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
