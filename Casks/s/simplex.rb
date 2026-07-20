cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.6"
  sha256 arm:   "65a707a05fd17a033e6267c724e4d3e2b00bca422358fcf15e462ca4c91c9160",
         intel: "e3700cfc0df661d01ff33438109e18909382c8116741b7757aa4f49f58e55f48"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
