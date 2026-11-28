cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.1.5"
  sha256 arm:   "c4bd1fa156aa5c2d32a14491845734ff3b2bb633a53cca271ddbbf0e97be6e6d",
         intel: "0abc8fa73530780d5bcfbf3835997c7703c79a81a001d7471c5e48056a14f9dc"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SimpleX.app"

  zap trash: [
    "~/Library/Preferences/chat.simplex.app.plist",
    "~/Library/Saved Application State/chat.simplex.app.savedState",
  ]
end
