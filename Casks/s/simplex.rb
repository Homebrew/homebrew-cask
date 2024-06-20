cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.8.1"
  sha256 arm:   "224038a453c0ac17a24d26b608751fc1570924938af39ff11243c341b2e6a3e1",
         intel: "1fb4857aec9c753f3fc9081f57a7a1ec77108530b28c7a0a7755a9b33d03766a"

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
