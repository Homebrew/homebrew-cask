cask "flycast" do
  version "2.6"
  sha256 "1dc33d2a77b9c84d0ba1fe30a88f570701f15a47ffb40a306dc244b0a8213267"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Flycast.app"

  zap rmdir: [
    "/Library/Application Support/Flycast",
    "~/.flycast",
    "~/.reicast",
  ]
end
