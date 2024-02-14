cask "dosbox-staging" do
  version "0.81.0"
  sha256 "a77c8ad4682e3bf19c03900ec6a696782e7a922ecbab232aaf9863fa02d3fd90"
  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg"
  name "DOSBox Staging"
  desc "DOS game emulator"
  homepage "https://github.com/dosbox-staging/dosbox-staging/"
  
  app "DOSBox Staging.app"

  zap trash: "~/Library/Preferences/DOSBox"
end
