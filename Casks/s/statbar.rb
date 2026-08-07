cask "statbar" do
  version "1.0.0"
  sha256 "6c191ec7fce73eeee9f8a23e357897ca01deb1f930ba0e89b3806acbc15e0b9c"

  url "https://github.com/coderhd/system-stats-menubar-app/releases/download/v#{version}/StatBar.app.zip"
  name "StatBar"
  desc "Lightweight menubar app for CPU, GPU, Memory, and LLM server stats"
  homepage "https://github.com/coderhd/system-stats-menubar-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "StatBar.app"

  zap trash: "~/Library/Preferences/dev.statbar.StatBar.plist"
end
