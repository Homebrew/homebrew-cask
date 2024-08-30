cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "bd8b4b3324c1b5b72468c0b23c782789c116cbac4a36cc59f04965b35b3f06b4",
         intel: "e97d5f67339c1188b8aa7350ca923c6b0b99dd42d3dea00dfdbcad3efca9b3ea"

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
