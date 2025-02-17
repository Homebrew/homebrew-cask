cask "ayugram" do
  version "5.11.1"
  sha256 "3bd5d4f38366d969f752851fb97105b1850f230058a68e9fa9163eb5972bf6da"

  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  name "AyuGram"
  desc "Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  depends_on macos: ">= :high_sierra"

  app "AyuGram.app"

  zap trash: [
    "~/Library/Application Support/AyuGram Desktop",
    "~/Library/Saved Application State/one.ayugram.AyuGramDesktop.savedState",
  ]
end
