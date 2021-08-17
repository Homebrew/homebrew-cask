cask "clickup" do
  version "3.0.0"

  if Hardware::CPU.intel?
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-x64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "d6d74f9bc1460bff72c4e839b0a1e249670870436d7e1161f766f2a09a2d9350"
  else
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-arm64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "8a99b6ced204d03cd88b0e417c224bb06e256181118301f4188b3894501e2ccc"
  end

  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  livecheck do
    url "https://download.todesktop.com/210531zdwwjv8ke/latest-mac.yml"
    strategy :electron_builder
  end

  app "ClickUp.app"
end
