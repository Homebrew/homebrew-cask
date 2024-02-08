cask "polypad" do
  version "1.3.0"
  sha256 "8640fca759485073b686d76fdda6c8c532bce480c60ea7516947aa8799420e0d"

  url "https://downloads.mattebot.co/polypad/mac/Polypad-#{version}.dmg",
      verified: "downloads.mattebot.co/polypad/mac/"
  name "Polypad"
  desc "Scriptable Textpad for Developers"
  homepage "https://polypad.io/"

  livecheck do
    url "https://polypad-releases.s3.us-west-1.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Polypad.app"

  zap trash: "~/Library/Application Support/Polypad"
end
