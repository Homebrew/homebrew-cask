cask "flycast" do
  version "1.2"
  sha256 "144b0b603bbd7bdc707cd9839ca550d665c62a1f4d1c09181ab02fc641058f89"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Flycast.app"

  zap rmdir: [
    "~/.reicast",
    "~/.flycast",
    "/Library/Application Support/Flycast/",
  ]
end
