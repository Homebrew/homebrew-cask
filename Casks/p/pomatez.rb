cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "7c24b6ddf6f913ec4eec26f097788d42eb0ead3c96560f579d0fd8babb6f405b",
         intel: "22eb0ac33b60d098e8c8b8ed846f3c0f9a1bb5aefdc3c69a3efb264c44ef4a90"

  url "https://github.com/zidoro/pomatez/releases/download/v#{version}/Pomatez-v#{version}-mac-#{arch}.dmg",
      verified: "github.com/zidoro/pomatez/"
  name "Pomatez"
  desc "Pomodoro timer"
  homepage "https://zidoro.github.io/pomatez"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

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
