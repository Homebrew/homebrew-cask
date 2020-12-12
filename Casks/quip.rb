cask "quip" do
  version "7.25.1"
  sha256 "6214af70342ea59c7fc92a8a5b41e876525815d4f980fb8352badd40b6396232"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  appcast "https://api.quip.com/-/sparkle-feed?manual=0"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  auto_updates true

  app "Quip.app"
end
