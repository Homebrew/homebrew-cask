cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.6"
  sha256 arm:   "218c7e4e7ca1e56a78a47ecd5cb5aa537823562beca441073b5fc33132ec161a",
         intel: "3d726c6c642c1168710820a35e0d98384b3b3f9336fdf35c31a6fe01e49722f5"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
