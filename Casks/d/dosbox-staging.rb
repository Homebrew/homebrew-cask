cask "dosbox-staging" do
  version "0.82.1"
  sha256 "8e2e7b68bdac71c1ae5258e0f24fd06c0778ce62c80042d604d141a0b5c1878a"

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
