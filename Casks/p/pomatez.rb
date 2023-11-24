cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "6b2413f46ab515c9fc249454bf7a555aa80c965f5e62f9394891afb9897c92cd",
         intel: "2295afe95c74e76113a9fefa695af9da938c65a1239607ca32a4405ae1f68c98"

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
