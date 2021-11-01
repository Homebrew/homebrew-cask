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

  zap trash: [
    "~/Library/Application Support/nimblenote/blob_storage",
    "~/Library/Application Support/nimblenote/Cache",
    "~/Library/Application Support/nimblenote/Code Cache",
    "~/Library/Application Support/nimblenote/Cookies",
    "~/Library/Application Support/nimblenote/Cookies-journal",
    "~/Library/Application Support/nimblenote/Dictionaries",
    "~/Library/Application Support/nimblenote/GPUCache",
    "~/Library/Application Support/nimblenote/Local Storage",
    "~/Library/Application Support/nimblenote/Network Persistent State",
    "~/Library/Application Support/nimblenote/nimblenote.json",
    "~/Library/Application Support/nimblenote/Preferences",
    "~/Library/Application Support/nimblenote/Session Storage",
  ],
      rmdir: "~/Library/Application Support/nimblenote"
end
