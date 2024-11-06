cask "liner@beta" do
  version "0.2.0"
  sha256 "65f574adc04814b99adaac3c9ac557993e9354a0e33c8c905f6b8db9675fabfb"

  url "https://github.com/linerai/releases/releases/download/#{version}/Liner-#{version}.0004-arm64.dmg",
      verified: "github.com/linerai/releases/"
  name "Liner.ai"
  desc "Free tool that lets you train your ML models without coding"
  homepage "https://liner.ai/"

  depends_on macos: ">= :el_capitan"

  app "Liner.app"

  # No zap stanza required
end
