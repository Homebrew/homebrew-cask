cask "keet" do
  arch intel: "-Intel"

  version "4.16.3"
  sha256 arm:   "02cde720673ffd9fdc968eba7ca50c5bf276da79dc0185094dff18bfa7255a93",
         intel: "dad38ca5f90601a621655d37028fea38cc1fc88a8fc74c7fe33256905c2298fb"

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
