cask "ayugram" do
  version "6.2.4"
  sha256 "80eae46787cd57c70c59d0c6ecbeed3d938a8f4b9ecf4a72b71616b0333cbd8b"

  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  name "AyuGram"
  desc "Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  app "AyuGram.app"

  zap trash: [
    "~/Library/Application Support/AyuGram Desktop",
    "~/Library/Saved Application State/one.ayugram.AyuGramDesktop.savedState",
  ]
end
