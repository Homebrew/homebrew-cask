cask "pomatez" do
  version "1.1.0"
  sha256 "64b5e09d9ee44328e89cc0f75675380210b202dc92ecf2b618e7a8f5d58a7bda"

  url "https://github.com/roldanjr/pomatez/releases/download/v#{version}/Pomatez-v#{version}-mac.dmg",
      verified: "github.com/roldanjr/pomatez/"
  appcast "https://github.com/roldanjr/pomatez/releases.atom"
  name "Pomatez"
  desc "Pomodoro timer"
  homepage "https://roldanjr.github.io/pomatez"

  app "Pomatez.app"

  zap trash: "~/Library/Application Support/pomatez"
end
