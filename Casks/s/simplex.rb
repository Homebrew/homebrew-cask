cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.1"
  sha256 arm:   "8c07247cb88f5faee3e64181810548614e96a85d4e1d5749d24b90c91186cd06",
         intel: "c439526086b855fc5c86d981350f92461ec51788ecb96fdbbe03fdf601e53816"

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
