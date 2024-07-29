cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "c61cfa2afdedb298496b3eb79f852a1d39a071439f1f193af029db2b14c7c466",
         intel: "e7a5100511913db5b5f7c04375ebcef770eaaf92fab985faaceb70b652061e1c"

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
