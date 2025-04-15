cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.2"
  sha256 arm:   "8eae21b45cadd08a1058c67855037600fb1e09e7fcfcfb940a5f29cc3351dd97",
         intel: "f94d942ce500bf3dc76f273b2f5714d4888a45c9a6ac18667d0e8a6f2fa32aae"

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
