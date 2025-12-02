cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "80cd219e5b7d1c126c164539baf3e3e0fe5e7269478845f72517240dc0f41ca5",
         intel: "0de6c93046902d4d6dd788766a01e2b876874c55c21d119c2b285d011adeaa35"

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
