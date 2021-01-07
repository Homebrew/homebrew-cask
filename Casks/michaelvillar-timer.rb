cask "michaelvillar-timer" do
  version "1.5.5"
  sha256 "9595154ca9f178edc7cb52aaf9360139d1fda85220bbe90a1d4fe5c0d23066e3"

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  name "Timer"
  desc "Timer application"
  homepage "https://github.com/michaelvillar/timer-app"

  livecheck do
    url :url
    strategy :git
  end

  app "Timer.app"
end
