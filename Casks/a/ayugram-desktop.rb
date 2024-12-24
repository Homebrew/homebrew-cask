cask "ayugram-desktop" do
  version "5.8.3"
  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  sha256 "7769048139324700659f73f52b703a65abfb71e6768edc3d3298473565a31849"
  
  name "AyuGram Desktop"
  desc "Is a Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"
  depends_on macos: ">= :sierra"

  app "AyuGram.app", target: "AyuGram Desktop.app"

  zap trash: "~/Library/Application Support/AyuGram Desktop"
end
