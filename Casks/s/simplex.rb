cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.2"
  sha256 arm:   "52f857387808834e4dbc8d16ef911072d1e6a829a285fdd3e5567e86e7b536d0",
         intel: "b43675b36be05ce638d6366d7341b4ef3aa2213468a57eadfc74d50742065510"

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
