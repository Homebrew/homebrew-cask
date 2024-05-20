cask "flycast" do
  version "2.3"
  sha256 "abf46c3ec2cf7059f765d23fe8bd7b9febac652f4b943188048f0c327aa06f0c"

  url "https://github.com/flyinghead/flycast/releases/download/v#{version}/flycast-macOS-#{version}.zip"
  name "Flycast"
  desc "Dreamcast, Naomi and Atomiswave emulator"
  homepage "https://github.com/flyinghead/flycast"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Flycast.app"

  zap rmdir: [
    "/Library/Application Support/Flycast/",
    "~/.flycast",
    "~/.reicast",
  ]
end
