cask "dosbox-staging" do
  version "0.80.1"
  sha256 "46a256645255e8345981ea357f1416b8ce4bc60a2aba9a86b5122d5075aa7fa"

  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg",
      verified: "github.com/dosbox-staging/dosbox-staging/"
  name "DOSBox Staging"
  desc "Modern continuation of DOSBox to run DOS games on current operating systems"
  homepage "https://dosbox-staging.github.io/"

  livecheck do
    url "https://dosbox-staging.github.io/downloads/macos/"
    regex(%r{href=.*/dosbox-staging-macOS-v(\d+\.\d+\.\d+)\.dmg}i)
  end

  app "DOSBox Staging.app"

  zap trash: [
    "~/Library/Preferences/DOSBox",
  ]
end
