cask "pomatez" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "611d0d0a5fb99f6aa1b0ae5bd7d57359f327987179b44b6faaf3dfd13be67923",
         intel: "f412dd9798f36ec2258e03c16b6dafce2921356ac268bbf782ecafd12532d72b"

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
