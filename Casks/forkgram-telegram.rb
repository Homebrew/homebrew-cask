cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.5.5"
  sha256 arm:   "83308558e8204a65e02128f2ad822a821c096cc0b7c4794f6b285aa04c2e6100",
         intel: "cc6c75936c4db4bc3dc53654747ec4d295eb18c500fb259d656a20bb1afe9d5a"

  url "https://github.com/Forkgram/tdesktop/releases/download/v#{version}/Forkgram.macOS.no.auto-update_#{arch}.zip"
  name "Forkgram"
  desc "Fork of Telegram Desktop"
  homepage "https://github.com/Forkgram/"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
