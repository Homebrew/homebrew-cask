cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "1fdb377b74e12b647b89ada7bc2e72d70b7088e965e3e6425a75bd88343c1a47",
         intel: "afb905f7e06f4142472f615ba52cae836696056c3416bdcef4ac5a86fbd1bbba"

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
