cask "dosbox-staging" do
  version "0.80.1"
  sha256 "46a256645255e8345981ea357f1416b8ce4bc60a2aba9a86b5122d5075aa7fa9"

  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg"
  name "DOSBox Staging"
  desc "DOS game emulator"
  homepage "https://github.com/dosbox-staging/dosbox-staging/"

  app "DOSBox Staging.app"

  zap trash: "~/Library/Preferences/DOSBox"
end
