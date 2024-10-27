cask "dosbox-staging" do
  version "0.82.0"
  sha256 "ff77f0647d2431f010c6d9dcc29bcf3ab1177cb40fef1009d9bafd1475180b5b"

  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg"
  name "DOSBox Staging"
  desc "DOS game emulator"
  homepage "https://github.com/dosbox-staging/dosbox-staging/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DOSBox Staging.app"

  zap trash: "~/Library/Preferences/DOSBox"
end
