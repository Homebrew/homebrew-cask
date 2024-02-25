cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.5"
  sha256 arm:   "02813badea03163cc9e5810ee8b11eee8350854aea2978dbfb484d33f34ceffd",
         intel: "1e826c7f44f0a9ad7ba346791eff77cc35a3d8813dbec9031b92b3132aa85796"

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
