cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.10"
  sha256 arm:   "0b8298c77d680e5975da901267c99d81a8c0a5f8bfd0195aff847ae0f721299e",
         intel: "3ff8866064ab2092df386df78cb63087f11bd529a72b7f68cfc17a2a6f540186"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
