cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.5.6"
  sha256 arm:   "2e65ea7551014da618a48c4cbd58c0879f3a2022716cb3b90e1fcc13174bd517",
         intel: "97133f09723ccf3eb158e6d85ccd0cb317b8eefa0b27ef5a5100290e08d48bfa"

  url "https://github.com/Forkgram/tdesktop/releases/download/v#{version}/Forkgram.macOS.no.auto-update_#{arch}.zip"
  name "Forkgram"
  desc "Fork of Telegram Desktop"
  homepage "https://github.com/Forkgram/"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
