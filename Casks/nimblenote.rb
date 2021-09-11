cask "nimblenote" do
  version "3.1.1"
  sha256 "7dbdaa2d79baa13493e28c2ab0ba38671a6e2874dfa07c09278c8ebc278f775a"

  url "https://github.com/nimblenote/nimblenote/releases/latest/download/nimblenote-#{version}.dmg",
      verified: "github.com/nimblenote/nimblenote/"
  name "Nimblenote"
  desc "Keyboard-driven note taking"
  homepage "https://nimblenote.app/"

  auto_updates true

  app "nimblenote.app"
end
