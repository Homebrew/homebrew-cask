cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.1.1"
  sha256 arm:   "c1458b4d5be456d2c85acb8d91b465256494dc50866cb6c72eb55519b8af0493",
         intel: "5539554519c380fd31daae6f519725d9ba1ced13287e394a1b7e608e8fbddb18"

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
