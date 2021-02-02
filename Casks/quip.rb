cask "quip" do
  version "7.28.2"
  sha256 "af532f62e54ad5bd7245eeca905b9a0902b19929f74c7c18c2a39fb7e68b2e2b"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
