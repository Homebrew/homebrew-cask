cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.7.1"
  sha256 arm:   "b8918a13d87bb56664bdbe2126f3b5e3c478f21c185b12740e3845c4847dc7e0",
         intel: "0b964c677c2a8d657a56ee94b2f0f5089f3f9468671e48b7ff27f7d498a12438"

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
