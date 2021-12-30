cask "sabaki" do
  version "0.52.0"
  sha256 "463eb69d451f74f3cbde6814b6888499b5f1f48d4d8b23b59ccb396840ba9bd9"

  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z",
      verified: "github.com/SabakiHQ/Sabaki/"
  name "Sabaki"
  desc "Go board and SGF editor"
  homepage "https://sabaki.yichuanshen.de/"

  app "Sabaki.app"
end
