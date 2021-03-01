cask "michaelvillar-timer" do
  version "1.6.0"
  sha256 "b953dcc5e8b942f4e2fb0a64e4732c55ba876ad4f1514769df6dc0cd3f225199"

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast "https://github.com/michaelvillar/timer-app/releases.atom"
  name "Timer"
  desc "Timer application"
  homepage "https://github.com/michaelvillar/timer-app"

  app "Timer.app"
end
