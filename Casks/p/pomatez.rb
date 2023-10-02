cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "ef9ba130f8c098930bd8451a673049a39782ef3db78036e59e170cd81fe97cc5",
         intel: "f79dd27ba6131bc77c8a7c5dc9787a97e24cb5fe9bf9cba7541f58035494fa7f"

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
