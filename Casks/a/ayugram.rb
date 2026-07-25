cask "ayugram" do
  version "6.7.8"
  sha256 "77b1d53a5dfa5917e8b5b405ee956dea2e7ba6d535be84f72444fc3a0cc3ff03"

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
