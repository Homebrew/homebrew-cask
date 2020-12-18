cask "quip" do
  version "7.26.2"
  sha256 "8033ba2162668b3ee63f290d26fe2a47f999395ac70150991065808daacc48df"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
