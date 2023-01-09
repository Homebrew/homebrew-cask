cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.5.3"
  sha256 arm:   "6feac1c7089d161f003e921b2d7a4a482b6b69fa3f6a41bbffed4885b63a52f0",
         intel: "e841defe6ffe755ec94949e6fd188c39f036727807e2cd8b8487e7f9cbf3565d"

  url "https://github.com/Forkgram/tdesktop/releases/download/v#{version}/Forkgram.macOS.no.auto-update_#{arch}.zip"
  name "Forkgram"
  desc "Fork of Telegram Desktop"
  homepage "https://github.com/Forkgram/"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
