cask "keet" do
  arch intel: "-Intel"

  version "4.16.1"
  sha256 arm:   "841cdb5a70fa8c6780b18b2868f92270dc49a08272ebcad1265c1435b207fce6",
         intel: "fc5a153476c3b8c6b5f3c7642e07cb38a825c362f74cfbd895840490ef24dace"

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
