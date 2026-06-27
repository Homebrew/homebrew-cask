cask "keet" do
  arch intel: "-Intel"

  version "4.17.2"
  sha256 arm:   "1b1d733b931a227f051627c39cb4d7156a996b5a47026c9084fff884460368f6",
         intel: "dec86e9510e56c7c920763f12285b45e30a2a3cc8d90b4fde700dc19ad15cb78"

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
