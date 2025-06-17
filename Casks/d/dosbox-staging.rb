cask "dosbox-staging" do
  version "0.82.2"
  sha256 "3b83bb63a7314212b207ae19b82ffd15bac6ddc3a2e96d65a425343b4e9bd4a2"

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
