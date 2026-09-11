cask "dosbox-staging-app" do
  version "0.83.0"
  sha256 "d8a771adfb8010fa6b5f7fb5351abfba659273ad01c89f03675a92bdbdae8167"

  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg"
  name "DOSBox Staging"
  desc "DOS game emulator"
  homepage "https://github.com/dosbox-staging/dosbox-staging/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "DOSBox Staging.app"

  zap trash: "~/Library/Preferences/DOSBox"
end
