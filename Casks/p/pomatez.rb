cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "a8e308fb795645f01179d7bb3ffaeff932d242cd0e9a7a29f0ca80c836eabbbb",
         intel: "4a2c0590f27a9e2fc6eff2619fe811cb51a36f2c7ee4c16d406d0e54ff189817"

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
    "~/Library/Application Support/CrashReporter/Pomatez_*.plist",
    "~/Library/Application Support/pomatez",
    "~/Library/Logs/pomatez",
    "~/Library/Preferences/com.roldanjr.pomatez.plist",
    "~/Library/Saved Application State/com.roldanjr.pomatez.savedState",
  ]
end
