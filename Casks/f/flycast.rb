cask "flycast" do
  version "2.5"
  sha256 "8be072b2c3902ddb90ad16daff5b0a5bc149b26b0c21eb0ded05a888e4178c2e"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Flycast.app"

  zap rmdir: [
    "/Library/Application Support/Flycast",
    "~/.flycast",
    "~/.reicast",
  ]
end
