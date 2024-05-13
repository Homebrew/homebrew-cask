cask "dosbox-staging" do
  version "0.81.1"
  sha256 "0f89f42d93c39fe96634934e19ef5a9f0a6978d6568e853e95c3f2154b9dbe9c"

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
