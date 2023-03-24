cask "flycast" do
  version "2.1"
  sha256 "e7462614af75d9fa36c254ffd73dc66dab2ea09b34193b6066e92579d16da8c3"

  url "https://github.com/flyinghead/flycast/releases/download/V#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Flycast.app"

  zap rmdir: [
    "~/.reicast",
    "~/.flycast",
    "/Library/Application Support/Flycast/",
  ]
end
