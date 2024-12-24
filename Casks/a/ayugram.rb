cask "ayugram" do
  version "5.8.3"
  sha256 "7769048139324700659f73f52b703a65abfb71e6768edc3d3298473565a31849"

  # Build from https://github.com/AyuGram/AyuGramDesktop/releases/download/v5.8.3/AyuGram.dmg
  url "https://huggingface.co/loxtera/ayu-builds-temp/resolve/main/AyuGram.dmg?download=true"
  name "AyuGram"
  desc "Is a Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  depends_on macos: ">= :high_sierra"

  app "AyuGram.app", target: "AyuGram Desktop.app"

  zap trash: "~/Library/Application Support/AyuGram Desktop"
end
