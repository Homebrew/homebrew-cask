cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "fa864bb8c32f8140a0adedc4a6de6152a970e0053c2fc995931f1db7b5c17ae5",
         intel: "98f74d3ee5b83c5490eb859aa14f1b5089568a821a2b26d09d8d520c1601917a"

  url "https://github.com/zidoro/pomatez/releases/download/v#{version}/Pomatez-v#{version}-mac-#{arch}.dmg",
      verified: "github.com/zidoro/pomatez/"
  name "Pomatez"
  desc "Pomodoro timer"
  homepage "https://zidoro.github.io/pomatez"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pomatez.app"

  uninstall signal: ["KILL", "application.com.roldanjr.pomatez"]

  zap trash: [
    "~/Library/Application Support/pomatez",
    "~/Library/Application Support/CrashReporter/Pomatez_*.plist",
    "~/Library/Logs/pomatez",
    "~/Library/Preferences/com.roldanjr.pomatez.plist",
    "~/Library/Saved Application State/com.roldanjr.pomatez.savedState",
  ]
end
