cask "flycast" do
  version "2.0"
  sha256 "7e2d651de3f3a27c4705cbab093ae7013f0164b8bad67961d1bfdf2d01c464f0"

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
