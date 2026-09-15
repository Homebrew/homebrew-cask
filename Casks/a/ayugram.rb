cask "ayugram" do
  version "7.0.9"
  sha256 "244bb500accfb56f006d5678aeecee4532a8eb1a3dfaaa259da87310cb37241f"

  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  name "AyuGram"
  desc "Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "AyuGram.app"

  zap trash: [
    "~/Library/Application Support/AyuGram Desktop",
    "~/Library/Saved Application State/one.ayugram.AyuGramDesktop.savedState",
  ]
end
