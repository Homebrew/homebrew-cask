cask "flycast" do
  version "1.3"
  sha256 "492682b106b2ff44508e2697975316cbabf1758da90edfc62af0dc2be178e452"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
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
