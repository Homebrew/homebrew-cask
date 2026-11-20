cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.1.4"
  sha256 arm:   "d6aae0906b8adf9c18299cb795d7bd5ef79dd007d40ace37912cfb61d3617f7e",
         intel: "5a972ff6aa0aa457c4f38324d6785abee7f10444b64de446078aaa520c622e75"

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
