cask "dosbox-staging-app" do
  version "0.83.1"
  sha256 "a016f04c25b0c27cc3dfa4165cd7242feb36d647fc9b3e4990ca83257d1012ad"

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
