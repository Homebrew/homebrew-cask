cask "quip" do
  version "7.31.1"
  sha256 "b765accf4ef50204de8196084709fb0a4f52846f753537d3198e64dcb7de25bb"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
