cask "statbar" do
  version "1.0.0"
  sha256 "e46ffd07eb234346874d270318cf0b5397d5f61b50e42f288c743e2edf6a4ad8"

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
