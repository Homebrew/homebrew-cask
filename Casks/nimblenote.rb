cask "nimblenote" do
  version "3.2.2"
  sha256 "4c5b2f1d8f46e3ca3f3620c092a95305ce8a09ba8632f72c870b71409a445217"

  url "https://github.com/nimblenote/nimblenote/releases/download/v#{version}/nimblenote-#{version}.dmg",
      verified: "github.com/nimblenote/nimblenote/"
  name "nimblenote"
  desc "Keyboard-driven note taking"
  homepage "https://nimblenote.app/"

  auto_updates true

  app "nimblenote.app"

  zap trash: "~/Library/Application Support/nimblenote"
end
