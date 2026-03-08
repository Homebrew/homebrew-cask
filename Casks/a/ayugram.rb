cask "ayugram" do
  version "6.3.10"
  sha256 "9ac1c4f4e7ca32fa0fdc07006639d17fffe346de59898dfe0a217d588879c62a"

  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  name "AyuGram"
  desc "Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "AyuGram.app"

  zap trash: [
    "~/Library/Application Support/AyuGram Desktop",
    "~/Library/Saved Application State/one.ayugram.AyuGramDesktop.savedState",
  ]
end
