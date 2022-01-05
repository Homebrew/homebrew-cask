cask "nimblenote" do
  version "3.2.1"
  sha256 "934feef24473724bbf8800337fb2f9898835581f55182e7fb8a7fdf4bcc943f5"

  url "https://github.com/nimblenote/nimblenote/releases/download/v#{version}/nimblenote-#{version}.dmg",
      verified: "github.com/nimblenote/nimblenote/"
  name "nimblenote"
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
