cask "flycast" do
  version "2.7"
  sha256 "dbd59cb88f52a95ea4de90693bb4ac156530452d5457f2cc4f656fdfd242fc26"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Flycast.app"

  zap rmdir: [
    "/Library/Application Support/Flycast",
    "~/.flycast",
    "~/.reicast",
  ]
end
